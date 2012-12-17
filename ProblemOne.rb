def simularity(string, suffix)
  for i in 0..suffix.length
    break if suffix[i] != string[i]
  end
  i
end

def suffixes_similarity(string)
  length = string.length
  total = length # string matches itself, no need to calculate
  (1..length-1).each do |suffix_start|
    total = total + simularity(string, string[suffix_start, length-suffix_start])
  end
  total
end

test_cases = gets.chomp.to_i # get number of tests
test_cases.times do
  line = gets.chomp
  puts suffixes_similarity(line)
end
