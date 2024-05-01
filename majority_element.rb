# 169. Majority Element
# Solved
# Easy
# Topics
# Companies
# Given an array nums of size n, return the majority element.

# The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums_hash = Hash.new(0)

    nums.each do |n|
        nums_hash[n] += 1
    end

    nums.max_by{|v| nums_hash[v]}
end
