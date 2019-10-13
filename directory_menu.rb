@students = []

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"  
end
  

def interactive_menu 
  loop do 
    print_menu
    process(STDIN.gets.chomp)
  end        
end


def process(selection)
  case selection 
    when "1"
      input_students 
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit 
    else 
      puts "I dont know what you meant, try again"
  end 
end 


def input_students 
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name 
  name = gets.chomp
  while !name.empty? do 
    student_intake(name, "November")
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end 
end

def student_intake(name, cohort)
  @students << {name: name, cohort: cohort}
end

def show_students 
  print_header 
  print_students_list
  print_footer
end


def print_header
  puts "The students of Villains Academy"
  puts "_ _ _ _ _ _ _ _"
end 


def print_students
  @students.each_with_index { |student, index| 
  puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"}             
end


def print_footer
  puts "Overall, we have #{@students.count} great students"
end 

def save_students 
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students 
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line 
  end 
    file.close
end 

def load_students (filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end 
    file.close
end 

def try_load_students 
  # below is the first argument from the command line 
  filename = ARGV.first  
  if ARGV.first 
    filename = ARGV.first 
  else 
    filename = "students.csv"
  end
  
  return if filename.nil?
    # if it exists 
  if File.exists?(filename) 
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
    #if it doesnt exist  
  else 
    puts "Sorry, #{filename} dosen't exist."
    # quit the program
    exit 
  end
  end 
end 

try_load_students
interactive_menu
