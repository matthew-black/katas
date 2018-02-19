# Finds a pair of numbers in an array that adds up to a specified sum:

# test data:
  # sorted versions
r1 = [1,3,4,6,7]
r2 = [1,2,3,3,6,7]
  # unsorted versions
r3 = [3,6,4,7,1]
r4 = [6,3,2,7,1,3]

  # Finds pair in unsorted array:
def find_summable_pair(num_array, sum)
  complements = {}
  num_array.each_with_index do |num, i|
    if complements[sum - num]
      return {
        found: true,
        nums: [sum - num, num],
        indices: [complements[sum - num], i],
        sum: sum
      }
    else
      complements[num] = i
    end
  end
  {found: false, sum: sum}
end

  # Finds pair in presorted array:
# def find_summable_pair(num_array, sum)
#   low = 0
#   high = num_array.size - 1

#   while low < high
#     if num_array[low] + num_array[high] == sum
#       return { found: true,
#                nums: [num_array[low], num_array[high]],
#                indices: [low, high],
#                sum: sum
#              }
#     elsif num_array[low] + num_array[high] > sum
#       high -= 1
#     else
#       low += 1
#     end
#   end
#   { found: false, sum: sum }
# end

  # Formats the results of search:
def show_results(summable_result)
  if summable_result[:found]
    puts "#{summable_result[:sum]} can be made with #{summable_result[:nums]}, found at #{summable_result[:indices]}."
  else
    puts "#{summable_result[:sum]} cannot be made by adding any two numbers from the given array."
  end
end

show_results(find_summable_pair(r2, 22))