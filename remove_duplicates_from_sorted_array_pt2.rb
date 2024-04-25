# Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be kept the same.

# Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

# Return k after placing the final result in the first k slots of nums.

# Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

def remove_duplicates(nums)
    count = Hash.new(0)
    
    nums.each do |n|
        count[n] += 1
    end
    i = 0
    l = nums.length - 1
    while i < l 
        if nums[i] == nums[i+1] && count[nums[i]] > 2
            nums.delete_at(i+1)
            count[nums[i]] -= 1
            l -= 1
        else
         i += 1
        end
    end
    nums.length
end