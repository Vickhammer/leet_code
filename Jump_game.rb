# # @param {Integer[]} nums
# # @return {Boolean}
# You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

# Return true if you can reach the last index, or false otherwise.

 

# Example 1:

# Input: nums = [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
# Example 2:

# Input: nums = [3,2,1,0,4]
# Output: false
# Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

def can_jump(nums)
    max_reach = 0
    last_index = nums.length - 1
  
    (0..last_index).each do |i|
      max_reach = [max_reach, i + nums[i]].max
  
      if max_reach >= last_index
        return true
      elsif max_reach <= i && nums[i] == 0
        return false
      end
    end
  
    return false
  end