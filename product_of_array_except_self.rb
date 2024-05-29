
# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

# You must write an algorithm that runs in O(n) time and without using the division operation.


# Example 1:

# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]
# Example 2:

# Input: nums = [-1,1,0,-3,3]
# Output: [0,0,9,0,0]
 

# Constraints:

# 2 <= nums.length <= 105
# -30 <= nums[i] <= 30
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 
# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    # new_arr = []
    # temp_arr = []
    # nums.each_with_index do |n,i|
    #         new_arr << nums[0...i].reduce(1, :*) * nums[i+1..nums.length-1].reduce(1, :*)
    # end
    # new_arr
    new_arr = []
    left_arr = [1]
    right_arr = [1]
    nums.each_with_index do |num,i|
        left_arr << left_arr[i] * num
    end

    nums.reverse.each_with_index do |num,i| 
        right_arr << right_arr[i] * num
    end

    right_arr = right_arr.reverse

    (0..nums.length-1).each do |i|

        new_arr[i] = left_arr[i] * right_arr[i+1]
    end

    new_arr

end


end

x = [1,2,3,4]

product_except_self(x)