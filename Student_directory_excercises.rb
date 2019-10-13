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

def sorted_by_alphabet
  index = 1
      @students.each {|x| if x[:name].start_with? ("a") && x[:cohort] == "november".to_sym 
      puts "#{index}. #{x[:name]} (#{x[:cohort]} cohort)"
  index += 1
      end
      }
  end

input_students
print_student