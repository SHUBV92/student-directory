# We're using the each() method to iterate over an array of students. 
# How can you modify the program to print a number before the name of each student, 
# e.g. "1. Dr. Hannibal Lecter"? Hint: look into each_with_index()

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
print_students
