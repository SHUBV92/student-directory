# Q:Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.


def input_students 
    puts "Please enter students information"
    puts "To finish, just hit return four times"
    students = []
    name = gets.chomp
    hobbies = gets.chomp
    country_of_birth = gets.chomp
    height = gets.chomp

    while !name.empty? do 
        students << {name: name, hobbies: hobbies, country_of_birth: country_of_birth, height: height, cohort: :november}
         puts "Now we have #{students.count} students"
         name = gets.chomp
         hobbies = gets.chomp
         country_of_birth = gets.chomp
         height = gets.chomp
    end 
     return students
end

input_students


