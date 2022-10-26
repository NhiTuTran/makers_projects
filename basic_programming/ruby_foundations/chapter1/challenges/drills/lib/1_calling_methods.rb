# Below, you'll find lots of incomplete methods.
# Each one takes a single argument.
# Add a method body so that the method returns the correct value

# It's possible to complete each challenge using a single method
# Use the Ruby Docs and Google liberally

# String methods

# TASK: define a method that returns a string that is the same as a given string, but converted to upper-case characters.
# EXAMPLE INPUT/OUTPUT:
# when the string is 'hello world'
# the method should return 'HELLO WORLD'
def block_caps_a_string(string)
  return string.upcase
end

# TASK: define a method that returns a string that is the same as a given string, but converted to lower-case characters.
# EXAMPLE INPUT/OUTPUT:
# when the string is 'HELLO WORLD'
# the method should return 'hello world'
def lower_case_a_string(string)
  return string.downcase
end

# TASK: define a method that returns a number which is the count of all characters in a given string.
# EXAMPLE INPUT/OUTPUT:
# when the string is 'hello'
# the method should return 5
def length_of_a_string(string)
  return string.length
end

# TASK: define a method that returns a string that reverses the order of the characters in a given string.
# EXAMPLE INPUT/OUTPUT:
# when the string is 'hello'
# the method should return 'olleh'
def reverse_a_string(string)
  return string.reverse
end

# TASK: define a method that returns a string that inverts the case of each character in a given string.
# EXAMPLE INPUT/OUTPUT:
# when the string is 'Hello World'
# the method should return 'hELLO wORLD'
def swap_the_case_of_a_string(string)
  return string.swapcase
end

# TASK: define a method that returns a symbol that has the same characters (single words for now).
# EXAMPLE INPUT/OUTPUT:
# when the string is 'hello'
# the method should return :hello
def string_to_symbol(string)
  return string.to_sym
end

# Integer methods

# TASK: define a method that returns a boolean evaluates if a given integer is odd.
# EXAMPLE INPUT/OUTPUT:
# when the integer is 1
# the method should return true
# when the integer is 2
# the method should return false
def is_integer_odd?(integer)
  return integer.odd?
end

# TASK: define a method that returns a boolean evaluates if a given integer is even.
# EXAMPLE INPUT/OUTPUT:
# when the integer is 1
# the method should return false
# when the integer is 2
# the method should return true
def is_integer_even?(integer)
  return integer.even?
end

# TASK: define a method that returns a float converted from a given integer.
# EXAMPLE INPUT/OUTPUT:
# when the integer is 1
# the method should return 1.0
def integer_to_float(integer)
  return integer.to_f
end

# TASK: define a method that returns a string equivalent of a given integer.
# EXAMPLE INPUT/OUTPUT:
# when the integer is 1
# the method should return '1'
def integer_to_string(integer)
  return integer.to_s
end

# TASK: define a method that returns an integer that is one less than a given integer (don't worry about negative numbers for now).
# EXAMPLE INPUT/OUTPUT:
# when the integer is 2
# the method should return 1
def return_previous_integer(integer)
  return integer.pred
end

# TASK: define a method that returns an integer that is one more than a given integer (don't worry about negative numbers for now).
# EXAMPLE INPUT/OUTPUT:
# when the integer is 1
# the method should return 2
def return_next_integer(integer)
  return integer.next
end

# Float methods

# TASK: define a method that returns a float that is rounded up from a given float.
# EXAMPLE INPUT/OUTPUT:
# when the float is 1.1
# the method should return 2.0
def round_up(float)
  return float.ceil
end

# TASK: define a method that returns a float that is rounded down from a given float.
# EXAMPLE INPUT/OUTPUT:
# when the float is 1.1
# the method should return 1.0
def round_down(float)
  return float.floor
end

# TASK: define a method that returns a string that is equivalent to a given float.
# EXAMPLE INPUT/OUTPUT:
# when the float is 1.1
# the method should return '1.1'
def float_to_string(float)
  return float.to_s
end

# TASK: define a method that returns a integer that is converted from a given float.
# EXAMPLE INPUT/OUTPUT:
# when the float is 1.1
# the method should return 1
def float_to_integer(float)
  return float.to_i
end

# TASK: define a method that returns a boolean that evaluates whether or not a given float is positive.
# EXAMPLE INPUT/OUTPUT:
# when the float is 1.1
# the method should return true
# when the float is -1.1
# the method should return false
def float_is_positive?(float)
  return float.positive?
end

# TASK: define a method that returns a boolean that evaluates whether or not a given float is negative.
# EXAMPLE INPUT/OUTPUT:
# when the float is 1.1
# the method should return false
# when the float is -1.1
# the method should return true
def float_is_negative?(float)
  return float.negative?
end

# Symbol methods

# TASK: define a method that returns a symbol that inverts the case of each character for a given symbol.
# EXAMPLE INPUT/OUTPUT:
# when the symbol is :Hello
# the method should return :hELLO
def swap_the_case_of_a_symbol(symbol)
  return symbol.swapcase
end

# TASK: define a method that returns a string that is the equivalent of a given symbol.
# EXAMPLE INPUT/OUTPUT:
# when the symbol is :hello
# the method should return 'hello'
def symbol_to_string(symbol)
  return symbol.to_s
end

# TASK: define a method that returns a symbol that converts every character of a given symbol to upper case.
# EXAMPLE INPUT/OUTPUT:
# when the symbol is :hello
# the method should return :HELLO
def block_caps_a_symbol(symbol)
  return symbol.upcase
end

# TASK: define a method that returns a symbol that converts every character of a given symbol to lower case.
# EXAMPLE INPUT/OUTPUT:
# when the symbol is :HELLO
# the method should return :hello
def lower_case_a_symbol(symbol)
  return symbol.downcase
end

# Boolean methods

# TASK: define a method that returns a string which is equivalent to a given boolean.
# EXAMPLE INPUT/OUTPUT:
# when the boolean is true
# the method should return 'true'
# when the boolean is false
# the method should return false
def boolean_to_string(boolean)
  return boolean.to_s
end

