def input_students 
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"

    @students = []
    name = gets.chomp 
   
  while !name.empty? do 
        @students << {name: name, cohort: :november}
         puts "Now we have #{@students.count} students"
         name = gets.chop
    end 
end

def print_students
  i = 0 
  while i < @students.length
    puts "#{i+1} #{student[:name]} (#{student[:cohort]} cohort)"}             
  end
end     

def sorted_by_alphabet
  index = 1
  @students.each {|x| if x[:name].start_with? ("a") && x[:cohort] == "november".to_sym && x[:name].length <= 12
    puts "#{index}. #{x[:name]} (#{x[:cohort]} cohort)"
    index += 1}
end

input_students
print_students
sorted_by_alphabet