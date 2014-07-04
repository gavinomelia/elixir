defmodule Reader do
	def get_number do
		IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end

	def get_sign do
		IO.puts "Enter +, * (multiply), -, or %."
		thing = IO.gets ""
		String.strip(thing)
	end
	
end

first = Reader.get_number
second = Reader.get_sign
third = Reader.get_number

if second == "+" do IO.puts first + third end
if second == "-" do IO.puts first - third end
if second == "*" do IO.puts first * third end
if second == "%" do IO.puts first / third end

IO.inspect first
IO.inspect second
IO.inspect third