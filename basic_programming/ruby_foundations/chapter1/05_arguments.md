# Getting Into Arguments

So far, we've seen how to call _some_ methods on Strings. For example, we can use `upcase` to return a copy of a string in block capitals.

```ruby
> "upcase me".upcase
=> "UPCASE ME"
```

## Video

Here's the [video](https://youtu.be/SqhDCxS3O00) for this section.

## Learning Objectives

In this section, you will learn about:
- What arguments are
- How to use arguments

## Part One: Your First Arguments

Now compare these two scenarios.

1. You want to find out how many characters are in a `String`
2. You want to find out if a specific character is in a `String`

In the first scenario, we just call the `length` method and Ruby will return a number corresponding to the number of characters that are in the `String`.

```ruby
> "makers".length
=> 6
```

In the second scenario, we need to find a new method and, importantly, we need a way of stating which character we're interested in. This is where _arguments_ come in. Arguments are pieces of information that you provide to methods. I'll demonstrate using the `include?` method, which is what we're after right now.

```ruby
> "programming".include?("p")
=> true
```

_Arguments_ are provided inside round brackets, or 'parentheses' `()`. Above, the `include?` method returned `true` because the character `"p"` (which I have provided as an argument) is found in `"programming"`.

### Your Turn

Now open up IRB and try out these methods, all of which take one argument. You might be able to figure out, by experimentation, how to use each method. If not, head over to the Ruby docs.

- `count`
- `delete`
- `end_with?`
- `prepend`

## Part Two: Multiple Arguments

Some methods take more than one argument but calling them is easy – you just put them all in parentheses, separated by a comma. For example, the `gsub` method can be used to substitute all instances of one character for another character, which means you need to provide two arguments – the character to target and its replacement.

```ruby
> "Edward Woodward".gsub("d", "o")
=> "Eowaro Wooowaro"
```

When you call a method, you must provide it with the correct number of arguments and those arguments must be in the correct order.  See what happens if you get that wrong.

Try this...

```ruby
> "calling gsub with no arguments".gsub
```

And this...

```ruby
> "calling gsub with one argument".gsub("l")
```

And, finally, this...

```ruby
> "calling upcase with one argument".upcase("C")
```

It's quite common to accidentally provide the wrong number of arguments to a method, so it's worth taking a moment to familiarise yourself with the error messages that you just saw.

## Reflect and Review

In this section you learned that things can be _passed into_ methods as _arguments_.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain:
- What arguments are
- How to use arguments
- What happens when you provide the wrong number of arguments


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=05_arguments.md&repository=makersacademy%2Fruby_foundations&redirect=chapter1%2F06_conditionals.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F05_arguments.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F05_arguments.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F05_arguments.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F05_arguments.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F05_arguments.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
