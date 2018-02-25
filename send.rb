require 'test/unit'
extend Test::Unit::Assertions

MATH_ME = {
  "add" => "+",
  "subtract" => "-",
  "multiply" => "*",
  "divide" => "/"
}


def arithmetic(a, b, operator)
  a.send(MATH_ME[operator], b)
end


if arithmetic(4,3, "add") == 7
  puts "Successfully added 4 + 3."
else
  puts "Failed to add 4 + 3."
end

if arithmetic(4,3, "subtract") == 1
  puts "Successfully subtracted 4 - 3."
else
  puts "Failed to subtract 4 - 3."
end

if arithmetic(4,3, "multiply") == 12
  puts "Successfully multiplied 4 * 3."
else
  puts "Failed to multiply 4 * 3."
end

if arithmetic(6,3, "divide") == 2
  puts "Successfully divided 6 / 3."
else
  puts "Failed to divide 6 / 3."
end