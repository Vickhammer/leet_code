# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
 

# Constraints:

# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    shortest_word = strs.min_by(&:length)
    current_chain = ''
    shortest_word.each_char.with_index do |letter,i|
        if strs.all? { |word| word.start_with?(shortest_word[0..i]) }
            current_chain += letter
            next
        else
            return current_chain
        end
    end

end