# Research how the method center() of the String class works. 
# Use it in your code to make the output beautifully aligned.

def input_students 
    puts "Please enter the names of the students".center(20, " ")
    puts "To finish, just hit return twice"

    @students = []
    name = gets.chop 
    
    while !name.empty? do 
        @students << {name: name, cohort: :november}
         puts "Now we have #{@students.count} students"
         name = gets.chop
    end 
end

def print_students
@students.each_with_index { |student, index| 
 puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"}             
     end


def sorted_by_alphabet
index = 1
    @students.each {|x| if x[:name].start_with? ("a") && x[:cohort] == "november".to_sym && x[:name].length <= 12
    puts "#{index}. #{x[:name]} (#{x[:cohort]} cohort)"
index += 1
    end
    }
end

input_students
# print_students
sorted_by_alphabet
