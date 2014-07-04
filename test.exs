defmodule Reader do
	def get_number do
		IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end
end

defmodule Blah do
def get do
	:random.seed(:erlang.now)
	Float.floor(:random.uniform * 150)
end
end


IO.puts Blah.get

thing = Reader.get_number
if thing === 2 do IO.puts "true" else
IO.puts "false"
end