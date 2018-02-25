  # first solution -- fairly hacky...
# def scramble(s1,s2)
#   x = s1.chars
#   y = s2.chars
#   x.each do |char|
#     if y.find_index(char)
#       y.delete_at(y.find_index(char))
#     end
#   end
#   if y.empty?
#     true
#   else
#     false
#   end
# end

 # way smarter way, just destroy the matched char from s1 if it's found in s2
def scramble(s1,s2)
  slice_me = s1
  s2.chars.each do |char|
    return false unless slice_me.slice!(char)
  end
  true
end

  # should return true
p scramble('dogcat','catdog')
p scramble('aabbccddeeffg', 'fagbcde')
  # should return false
p scramble("abcdefg", "abcdefgh")
p scramble("cat", "dog")
