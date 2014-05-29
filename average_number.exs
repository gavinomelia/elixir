
defmodule Reader do
	def get_number do
		IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end
end

first = Reader.get_number
second = Reader.get_number
third = Reader.get_number

all = second + first + third

average = all / 3
IO.puts average

greatest = 0
if first > greatest do greatest = first end
if second > greatest do greatest = second end
if third > greatest do greatest = third end


IO.puts greatest