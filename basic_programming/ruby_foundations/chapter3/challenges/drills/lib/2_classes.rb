# In these exercises, you'll define a few small classes
# The first ones will be familiar
# Do them without looking back at your previous work
# The next will be a bit more complex
# And so on...

# In some cases, you'll define classes with methods that manipulate arrays or hashes

# The requirements will be provided as follows

# Class Name
# Initialization args, if there are any
# Method Name
# Method arguments, if there are any
# Method return value
# Examples, if needed
# More methods, as needed

# Example requirements

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'

# Example solution

# > class Greeter
# >   def hello(name)
# >    return 'Hello, ' + name
# >  end
# > end

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'
# goodbye
# Takes one string as an arg (a name)
# Returns 'Goodbye, Sam', if the arg is 'Sam'
# goodnight
# Takes one string as an arg (a name)
# Returns 'Goodnight, Jo', if the arg is 'Jo'
# goodmorning
# Takes one string as an arg (a name)
# Returns 'Goodmorning, Alex', if the arg is 'Alex'

class Greeter
  def hello(name)
    return "Hello, " + name
  end

  def goodbye(name)
    return "Goodbye, " + name
  end

  def goodnight(name)
    return "Goodnight, " + name
  end

  def goodmorning(name)
    return "Goodmorning, " + name
  end
end

# Calculator
# add
# takes two numbers as args
# returns the total
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
# history
# takes no args
# returns the results of all previous calculations

class Calculator
  def initialize
    @prev_calc = [] 
  end

  def add(num1, num2)
    @prev_calc.push(num1 + num2)
    return @prev_calc.last
  end

  def multiply(num1, num2)
    @prev_calc.push(num1 * num2)
    return @prev_calc.last
  end

  def subtract(num1, num2)
    @prev_calc.push(num1 - num2)
    return @prev_calc.last
  end

  def divide(num1, num2)
    @prev_calc.push(num1 / num2)
    return @prev_calc.last
  end

  def history
    return @prev_calc
  end
end

# Basket
# add
# takes one argument of any type
# adds it to the list of items
# items
# returns everything that has been added to the basket

class Basket
  def initialize
    @list = []
  end

  def add(arg)
    @list.push(arg)
  end

  def items
    return @list
  end
end

# Cohort
# add_student
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students
# students
# returns all the students who have been added to the cohort
# employed_by
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer

class Cohort
  def initialize
    @student_list = []
  end

  def add_student(student)
    @student_list.push(student)
  end

  def students
    return @student_list
  end

  def employed_by(employer)
    return @student_list.select { |student_employer| student_employer["employer"] == employer }
  end
end

# Person
# is initialized with a complex hash, for example...
{
  'name' => 'alex',
  'pets' => [
    {'name' => 'arthur', 'animal' => 'cat'},
    {'name' => 'judith', 'animal' => 'dog'},
    {'name' => 'gwen', 'animal' => 'goldfish'}
  ],
  'addresses' => [
    {'name' => 'work', 'building' => '50', 'street' => 'Commercial Street'},
    {'name' => 'home', 'building' => '10', 'street' => 'South Street'}
  ]
}

# work_address
# takes no args
# returns the work address in a nice format
# E.g. '50 Commercial Street'
# home_address
# takes no args
# returns the home address in a nice format
# E.g. '10 South Street'
# pets
# takes no args
# returns a nice summary of the person's pets

# E.g.
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen
#

class Person
  def initialize(hash)
    @hash = hash
  end

  def work_address
    arr_addresses = @hash["addresses"]
    work_address = arr_addresses.find { |address| address["name"] == "work" }
    return "#{work_address["building"]} #{work_address["street"]}"
  end

  def home_address
    arr_addresses = @hash["addresses"]
    home_address = arr_addresses.find { |address| address["name"] == "home" }
    return "#{home_address["building"]} #{home_address["street"]}"
  end

  def pets
    arr_pets = @hash["pets"]
    person_name = @hash["name"]
    output = "#{person_name} has #{arr_pets.length} pets\n"

    arr_pets.each do |pet|
      output += "- a #{pet["animal"]} called #{pet["name"]}\n"
    end
    return output
  end
end
