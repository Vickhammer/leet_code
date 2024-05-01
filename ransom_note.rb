# 383. Ransom Note
# Solved
# Easy
# Topics
# Companies
# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

 

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    r = ransom_note.split('')
    m = magazine.split('')

    subset?(r,m)
    
end

def subset?(a,b)
  hash_a = Hash.new(0)
  hash_b = Hash.new(0)

  a.each do |x|
    hash_a[x] += 1
  end

  b.each do |y|
    hash_b[y] +=1
  end

  hash_a.each do |k,v|
    if hash_b.has_key?(k) == false
        return false
    elsif v > hash_b[k]
        return false
    end
  end

  true
        
end