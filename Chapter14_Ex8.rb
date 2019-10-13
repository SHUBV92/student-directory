def message 
 puts "read programs source code"
end

file = File.open(_File_, "r")

file.readlines.each { |lines|
   puts lines
}
