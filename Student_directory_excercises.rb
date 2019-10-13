def input_students 
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @students = []
  name = gets.chomp
  while !name.empty? do 
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end 
    return @students
end

def print_students
  @students.each_with_index { |student, index| 
  puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"}              
end

input_students
print_student