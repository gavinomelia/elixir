
defmodule Reader do
	def get_number do
		IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end
end
list = [3, 2, 4]
#list = [Reader.get_number, Reader.get_number, Reader.get_number]
# if input < 0 do list ++ input
# end
IO.inspect list

defmodule GavEnum do
	def max(collection) do
		Enum.reduce(collection, 0, fn(each, great) -> 
			if each > great do
				great = each 
			end
			great
		end)
	end

	def average(collection) do
		Enum.sum(collection) / Enum.count(collection)
	end

	def sum(collection) do
		Enum.reduce(collection, 0, fn(each, acc) -> 
			each + acc
		end)
	end

	def doubled(collection) do
		Enum.map(collection, fn(each) ->
			mult = Reader.get_number
			each * mult
		end)
	end
end

avg = GavEnum.average(list)

IO.puts "The average is: #{avg}"
IO.puts "The max is: #{GavEnum.max(list)}"
IO.puts "The sum is: #{GavEnum.sum(list)}"
IO.puts "Enter multipliers:"
IO.inspect GavEnum.doubled(list)
