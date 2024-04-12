# You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

# Merge nums1 and nums2 into a single array sorted in non-decreasing order.

# The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

def merge(num1, m, num2, n)

    a = num1[0, m]
    b = num2[0, n]
  
    merged = a + b
  
    
    sorted_merged = merged.sort
  
    
    num1[0, sorted_merged.length] = sorted_merged
end

p merge([1,2,3,0,0,0], 3,[2,5,6], 3)
