# Refactoring

Right after all your tests go green, you should pause for a moment to consider how you got there and whether you could change your code to make it better in some way – this is the art of refactoring.

Whilst refactoring, we don't add any new features (such as new rules about what makes a valid password) but we might add new methods. Through refactoring, we try to end up with code that is:

- Correct, meaning that your tests still pass
- Clear, so that its easy to read)
- Concise, with little or no repetition

The ultimate goal is to generate code that is easy to change because, if you can be sure of one thing in programming, it's that changes will be necessary! It might be that your client changes their mind, there was a misunderstanding, a new user need is discovered or maybe the application just continues to grow as planned. All of these scenarios involve changing, or building upon, the code that you already have.

## Video

Here's the [video](https://youtu.be/PJWSKKMTVyo) for this section.

## Learning Objectives

In this section, you will learn
- What _refactoring_ is
- When to refactor
- The benefits of refactoring
- Two potential refactors of a password validator solution

## Part One: A Potential Solution

Some of you will have created something a lot like this, for your password validator.

```ruby
def valid?(password)
  if password.length < 8
    return false
  elsif password.include?("!")
    return true
  elsif password.include?("@")
    return true
  elsif password.include?("$")
    return true
  elsif password.include?("%")
    return true
  elsif password.include?("&")
    return true
  else
    return false
  end
end
```

If so, bravo! You solved the problem perfectly well and now it's time to refactor. If you ended up with something else, please share your solution in Slack so that others, including your coach, can see it :)

# Part Two: First Refactor

We're now going to do three things that will make this code a little easier to work with.

1. We'll create a new method that checks the length of the password
2. We'll create a new method that looks for the special characters
3. We'll use those two methods in our if statement

Along the way, we'll encounter a few new things
- Calling methods from inside other methods
- A simple regex

The first method will look like this and it will return either `true`, when the password is longer than 7 characters, or false, when it is shorter.

```ruby
def sufficient_length?(password)
  # this password.length > 7 will evaluate to true or false
  return password.length > 7
end
```

The second method will look like this. It will return either `true` or `false` depending on whether the password contains the special characters.

```ruby
def special_chars_included?(password)
  if password.include?("!")
    return true
  elsif password.include?("@")
    return true
  elsif password.include?("$")
    return true
  elsif password.include?("%")
    return true
  elsif password.include?("&")
    return true
  else
    return false
  end
end
```

And our `valid?` method would look like this.

```ruby
def valid?(password)
  if sufficient_length?(password) && special_chars_included?(password)
    return true
  else
    return false
  end
end
```

I think it's an improvement because our rules are now contained within methods which have descriptive names. Also, now that the codebase is broken down into small pieces, we can combine them in novel ways to create new behaviour. For example, if we wanted to add a new `valid_weak?` method that only checked for special characters, we could do that very easily.

```ruby
def valid_weak?(password)
  if special_chars_included?(password)
    return true
  else
    return false
  end
end
```

## Part Three: Second Refactor

That method which checks for special characters is a bit long, so we can shorten it? Can we check for all of the special characters at once? Yes, we can, using a regex! Regex stands for Regular Expression and they are used to match patterns (the presence of some specific characters) in text. They are quite tricky to get your head around at first but they are very powerful and, with a bit of trial and error, you can get a lot of things done with them. Try [Rubular](https://rubular.com/) to see how to use them.

Let's refactor our `special_chars_included?` method to use a regex. Let's also assign the regex to a variable, so that we can give it a meaningful name.

```ruby
required_chars = /[!@$%&]/

def special_chars_included?(password)
  # `/[!@$%&]/` is the regex
  # it matches (detects) any of the 5 special characters
  if password =~ required_chars
    return true
  else
    return false
  end
end
```

## Reflect and Review

In this section, we introduced the practice of refactoring. From now on, we'll expect you to refactor your code, as you go along, with a strong focus on readability and ease of change.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain:

- What refactoring is
- When you should use it
- The benefit of refactoring
- Which of the two suggested refactors you prefer


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=10_refactoring.md&repository=makersacademy%2Fruby_foundations&redirect=chapter1%2F11_chapter_1_review.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F10_refactoring.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F10_refactoring.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F10_refactoring.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F10_refactoring.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F10_refactoring.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
