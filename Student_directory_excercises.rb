def input_students 
  puts "Please enter students information".center(20, " ")
  puts "To finish, just hit return four times".center(20, " ")

  @students = []
  name = gets.strip
  hobbies = gets.strip
  country_of_birth = gets.strip
  height = gets.strip
  
  while !name.empty? do 
    @students << {name: name, hobbies: hobbies, country_of_birth: country_of_birth, 
    height: height, cohort: :november}

    if students.count == 1
      puts "Now we have #{students.count} student".center(20, " ")
    else   
      puts "Now we have #{students.count} students".center(20, " ")  
    end   

    name = gets.strip
    hobbies = gets.strip
    country_of_birth = gets.strip
    height = gets.strip
  end 
    return @students
end

students_by_cohort = {}

def print_students
  @students.each_with_index { |student, index| 
  puts "#{index+1} #{student[:name]} #{student[:hobbies]} #{student[:country_of_birth]} #{student[:height]} (#{student[:cohort]} cohort)"}.center(20, " ")              

  @students.each do |x|
      c = x[:cohort]
      n = x[:name]
  
      if @students_by_cohort[c] == nil
          @students_by_cohort[c] = []
      end
  
      @students_by_cohort[c].push(n)
  end 
  puts @students_by_cohort.to_a
  end 
  
def sorted_by_alphabet
  index = 1
  @students.each {|x| if x[:name].start_with? ("a") && x[:cohort] == "november".to_sym && x[:name].length <= 12
  puts "#{index}. #{x[:name]} (#{x[:cohort]} cohort)".center(20, " ")
  index += 1}
end
  
  input_students
  print_students
  sorted_by_alphabet

