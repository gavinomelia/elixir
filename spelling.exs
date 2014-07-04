
defmodule Reader do
	def get_number do
		IO.puts "Enter a word!"
		IO.gets ""
	end
end

defmodule Compare do
	def words do
		list = [Reader.get_number, Reader.get_number, Reader.get_number,]
		System.cmd("say spell #{Enum.each}")
		test1 = [Reader.get_number, Reader.get_number, Reader.get_number,]
		if list === test1 do
			IO.puts "You got 100%!"
		else
		IO.puts "You failed!"
		end
	end
end

Compare.words