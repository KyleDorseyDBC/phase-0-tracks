
#numbers = [5, 32, 90, 65]
# # def integer_search(array, int)
# # 	array.length.times do |value|
# # 		value == int
# # 			return 
# # 	end
# # end

# # p integer_search(numbers, 20)

# def search_for_it(array, int)
# 	index = 0
# 	while index < array.length
# 		if array[index] == int
# 			p index
# 		else
# 			return nil
# 		end
# 	end
# 	index += 1
# end

# p search_for_it(numbers, 32)


# # Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

def bubble_sort(list)
  return list if list.size <= 1 # already sorted

  swapped = true
  while swapped
    swapped = false # maybe this time, we won't find a swap
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true # found a swap... keep going
      end
    end
  end

  list
end

array = []
array << 5
array << 1000.times do |x|
	x + 1
end


p bubble_sort(array)





