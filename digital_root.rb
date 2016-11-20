# DOMAIN LOGIC

def digital_root(n)
  sum = 0
  n.to_s.split('').each {|num| sum += num.to_i}
  return sum if sum.to_s.split('').length == 1
  digital_root(sum)
end

def digital_root_eff(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end

# DRIVER CODE

puts digital_root(123)
puts digital_root(99)
puts digital_root(0)

puts digital_root_eff(123)
puts digital_root_eff(99)
puts digital_root_eff(0)