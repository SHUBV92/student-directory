#let's put all students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffery Baratheon",
"Norman Bates"
]

#add then print them 
puts "The students of Villains Academy"
puts "_ _ _ _ _ _ _ _"

students.each {|student|  puts student}

# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
#it's important that print() dosen't add new line characters 
