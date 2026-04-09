# Given an integer x, return true if x is a palindrome, and false otherwise.
# i/p:- 121 o/p:- true
# i/p:- (-121, 1234, 0, -1) o/p:- false

def is_palindrome(x)
  return false if x <= 0
  reverse_num = 0
  last_digit = nil
  while x != 0
    last_digit = x % 10                              # To get the last digit of the number
    reverse_num = reverse_num * 10 + last_digit      # store it to the variable 
    x = x / 10                                       # Remove the last digit
  end
  reverse_num == x ? true : false
end

x = 121
puts is_palindrome(x)
