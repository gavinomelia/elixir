defmodule guessing_game do
	def find_number do
		
	end


	def get_number do
			IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end
	










end