
defmodule Reader do
	def get_number do
		IO.puts "Enter a number!"
		thing = IO.gets ""
		cleaned = String.strip(thing)
		String.to_integer(cleaned)
	end
end

#list = [Reader.get_number, Reader.get_number, Reader.get_number]
# if input < 0 do list ++ input
# end

defmodule GavEnum do
	def list do
		[3, 2, 4]
	end
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
			multiple = Reader.get_number
			multiple * each
		end)
	end
end
IO.inspect GavEnum.list
avg = GavEnum.average(GavEnum.list)

IO.puts "The average is: #{avg}"
IO.puts "The max is: #{GavEnum.max(GavEnum.list)}"
IO.puts "The sum is: #{GavEnum.sum(GavEnum.list)}"
IO.puts "Enter multipliers:"
IO.inspect GavEnum.doubled(GavEnum.list)
