defmodule Reader do
	def get_number do
		IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end

	def get_sign do
		IO.puts "Enter +, * (multiply), -, %, or sq."
		thing = IO.gets ""
		String.strip(thing)
	end
	
end

first = Reader.get_number
second = Reader.get_sign
if second == "sq" do third = 0
else third = Reader.get_number
end

if second == "+" do IO.puts first + third end
if second == "-" do IO.puts first - third end
if second == "*" do IO.puts first * third end
if second == "%" do IO.puts first / third end
if second == "sq" do IO.puts first * first end
