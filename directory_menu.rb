@students = []

def input_students 
    puts "Please enter the names of the students".center(20, " ")
    puts "To finish, just hit return twice"
    name = gets.strip
    while !name.empty? do 
        @students << {name: name, cohort: :november}
         puts "Now we have #{@students.count} students"
         name = gets.chop
    end 
end


def interactive_menu 
  loop do 
    print_menu
    process(gets.chomp)
  end        
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"  
end


def show_students 
    print_header 
    print_students_list
    print_footer
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

def print_header
    puts "The students of Villains Academy"
    puts "_ _ _ _ _ _ _ _"
    end 

def print_students
        @students.each_with_index { |student, index| 
        puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"}              
    end
end 

def print_footer(names)
    puts "Overall, we have #{names.count} great students"
end 


interactive_menu

def save_students 
    # open the file for writing
    file = File.open("students.csv", "w")
    # iterate over the array of students 
    @students.each do |student|
        student_data = [student[:name]], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line 
    end 
    file.close
end 
