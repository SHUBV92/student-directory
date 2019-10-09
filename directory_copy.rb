# Q:10 We've been using the chomp() method to get rid of the last return character. 
# Find another method among those provided by the String class that could be used 
# for the same purpose (although it will require passing some arguments).





def input_students 
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"

    students = []
    name = gets.chop 
    # .chomp has been replaced with .chop a method provided by the string class 
    #  that has the same function

    while !name.empty? do 
        students << {name: name, cohort: :november}
         puts "Now we have #{students.count} students"
         name = gets.chop
    end 
     return students
end

input_students




