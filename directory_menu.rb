@students = []

def interactive_menu 
  loop do 
    print_menu
    process(gets.chomp)
  end        
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"  
end


    selection = gets.chomp
    # 3. do what the user has asked 
    
def process(selection)
  case selection 
    when "1"
        input_students 
    when "2"
       show_students
    when "9"
        exit 
    else 
        puts "I dont know what you meant, try again"
    end 
end 

def show_students 
    print_header 
    print_students_list
    print_footer
end





# refine these methods 
# input_students 
# print_students 
# sorted_by_alphabet

