# Given a pattern and a string s, find if s follows the same pattern.

# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.

 

# Example 1:

# Input: pattern = "abba", s = "dog cat cat dog"
# Output: true
# Example 2:

# Input: pattern = "abba", s = "dog cat cat fish"
# Output: false
# Example 3:

# Input: pattern = "aaaa", s = "dog cat cat dog"
# Output: false
 

# Constraints:

# 1 <= pattern.length <= 300
# pattern contains only lower-case English letters.
# 1 <= s.length <= 3000
# s contains only lowercase English letters and spaces ' '.
# s does not contain any leading or trailing spaces.
# All the words in s are separated by a single space.

def word_pattern(pattern, s)
    pattern = pattern.split('')
    s = s.split()
    map = Hash.new()
    return true if s.length == 1 && pattern.length == 1
    return false if pattern.length != s.length

    pattern.each_with_index do |l,i|
        
        if map.has_key?(l)
            if map[l] === s[i]
                next
            else
                return false
            end
        else
            map[l] = s[i]
        end
    end
    
    map.values.uniq.length == map.length ? true : false
end