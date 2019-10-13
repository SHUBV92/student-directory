def input_students 
  puts "Please enter students information"
  puts "To finish, just hit return four times"

  @students = []
  name = gets.chomp
  hobbies = gets.chomp
  country_of_birth = gets.chomp
  height = gets.chomp
  
  while !name.empty? do 
    @students << {name: name, hobbies: hobbies, country_of_birth: country_of_birth, 
    height: height, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
    hobbies = gets.chomp
    country_of_birth = gets.chomp
    height = gets.chomp
  end 
    return @students
end

def print_students
  @students.each_with_index { |student, index| 
  puts "#{index+1} #{student[:name]} #{student[:hobbies]} #{student[:country_of_birth]} #{student[:height]} (#{student[:cohort]} cohort)"}              
end

def sorted_by_alphabet
  index = 1
  @students.each {|x| if x[:name].start_with? ("a") && x[:cohort] == "november".to_sym && x[:name].length <= 12
  puts "#{index}. #{x[:name]} (#{x[:cohort]} cohort)"
  index += 1}
end
  
  input_students
  # print_students
  sorted_by_alphabet

