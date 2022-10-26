def grammar_check(str)
    capital = str.start_with?(str[0].upcase)
    sentence_ending_punc = "." || "?" || "!"
    punctuation = str.end_with?(sentence_ending_punc)
    if capital && punctuation
        return true
    else
        return false
    end

end













# # {{PROBLEM}} Method Design Recipe

# ## 1. Describe the Problem
# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# ## 2. Design the Method Signature

# _Include the name of the method, its parameters, return value, and side effects._
# method_name = grammar_check

# parameters: (text)

# return value: boolean

# ## 3. Create Examples as Tests

# _Make a list of examples of what the method will take and return._

# text = "Hello, my name is Jeff."
# return = true

# text = "hi I am Jeff"
# return = false

# _Encode each example as a test. You can add to the above list as you go._

# ## 4. Implement the Behaviour

# _After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

