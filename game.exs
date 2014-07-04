defmodule Game do
	def first do
		IO.puts "Put the first person"
		IO.gets ""
	end

	def second do
		IO.puts "Put the second person"
		IO.gets ""
	end

	def random do
		:random.seed(:erlang.now)
		Float.floor(:random.uniform * 150)
	end 

	def keagan do
		if Game.first == keagan do IO.puts "1000" else
		IO.puts Game.random 
		IO.puts "%"
end
end


end

Game.first
Game.second