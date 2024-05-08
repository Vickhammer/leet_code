# 58. Length of Last Word
# Solved
# Easy
# Topics
# Companies
# Given a string s consisting of words and spaces, return the length of the last word in the string.

# A word is a maximal 
# substring
#  consisting of non-space characters only.

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s = s.strip.split(' ')
    s[-1].length
end