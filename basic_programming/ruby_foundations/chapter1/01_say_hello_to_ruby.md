# Introducing Ruby

Ruby was created by Yukihiro Matsumoto (affectionately known as "Matz"), with the goal of being pleasant or, in his words, "natural" to use. If it's your first programming language, it might not feel very natural to begin with, but you'll get there and when you start to learn a second language you'll be able to make some interesting comparisons.

## Video

Here's the [video](https://youtu.be/a5DeRQ2Hwks) for this section.

## Learning objectives

In this section, you'll learn:

- One way of executing Ruby code
- How to create and concatenate Strings
- What is meant by _return value_
- How to _assign_ and _reassign variables_

## Prerequisites

* Your machine is [set up](https://github.com/makersacademy/basic-programming#phase-zero-development-setup), ready for some programming

## Part One: Executing Ruby Code in IRB

IRB is a tool that allows you to execute Ruby code in an interactive way – you write some code, hit enter and the code is executed... then you write some more code and so on. It's extremely useful as sketchbook or notepad for code, where you can quickly experiment or explore ideas.

To start IRB, open your terminal and type `irb`.  You'll notice that the prompt changes (from `%` to `>`, if you're a Mac).

```ruby
; irb
2.7.0 :001 >
```

From now on, I'll use `>` as the prompt in code examples to show that I am using IRB and the text immediately after the prompt will be what I typed. Please start IRB now and follow along :)

## Part Two: Hello Ruby!

Let's write some Ruby! Start by saying "hello" and Ruby, like an annoying sibling, will just repeat it back to you.

```ruby
> "hello"
=> "hello"
```

Let's breakdown what happened there – you created a `String` containing the letters `H`, `e`, `l`, `l` and `o`, then hit enter and saw the same string `return`ed back to you. Note that IRB indicates the `return` value using `=>`.

This leads us to think about two new things – `String`s and `return` values.

### Strings

`String`s are one of Ruby's _data types_. They're used to store any combination of letters, numbers or special characters. They could be words, like `"hello"`, names like `"Mandip"`, the flight number `"BA123"`, an emoji `":D"` or pretty much anything else you can imagine.

> Find a list of Ruby's other data types and make a note of them somewhere
### Return Values

A `return` value is what comes back after Ruby has executed some code. Not much happened in that first example, you created the `String` and Ruby just returned it.

Feel free to try some other examples.

```ruby
> "Farewell!"
=> "Farewell!"
> "Ruby Ruby Ruby"
=> "Ruby Ruby Ruby"
> "I do not know what else to say"
=> "I do not know what else to say"
```

### String Manipulation

In those examples, we're not really achieving anything useful – a `String` is created and then `return`ed. Let's try to do something with our `String`s.

```ruby
> "hello, " + "world!"
```

<details>
  <summary>Click here to see the expected return value</summary>
  <code>
    => "hello, world!"
  </code>
</details>
<br>

Now we're getting somewhere! The `String`s have been joined or, to use the technical term, **concatenated** and a new `String` was returned. This is one example of `String` manipulation (changing a string). The first few programs you build in Ruby will focus on this.

There's a problem though! At the moment, the return value is sort of _lost_ and we would have to repeat the concatenation if we wanted to see the full message once again.

```ruby
> "hello, " + "world!"
=> "hello, world!"
```

If there's one thing you'll come to hate as a developer, it's repetition! So, wouldn't it be great if we could grab hold of the return value to use again later?  Well, we can do just that, using variables.

### Variables

Variables are flexible containers for things, such as `String`s. Putting something _in_ one of these containers is called _assignment_. Let's assign the return value of our String concatenation to a variable called `greeting`.

```ruby
> greeting = "hello, " + "world!"
=> "hello, world!"
> greeting
=> "hello, world!"
```

Variables can be _reassigned_ to contain different values, such as a different `String`, hence the name `variable`. Here's an example of reassignment.

```ruby
> greeting = "hello, " + "world!"
=> "hello, world!"
> greeting
=> "hello, world!"
> greeting = "hello again, " + "world!"
=> "hello again, world!"
> greeting
=> "hello again, world!"
```

### Time to Break Stuff

We've seen that a `String` is created by enclosing some characters in quotes. What happens if you leave them out? Do that now in IRB to find out.

I.e. Try this...

```ruby
> hello
```

When you've spent a few mins thinking and researching, move on and we'll come back to this in the next section, which focuses on error messages.
## Reflect and Review

So far, we've touched on quite a few things, very superficially but, rest assured, we'll dig deeper in later sections as these are some of the basic building blocks of almost every Ruby program.

### So far, we've encountered

- Executing Ruby code in IRB
- Strings
- String concatenation
- Variables
- Return values

**Please pause at this point to reflect and review your learning...**

- Can you explain, verbally or in writing, each of the above in a couple of sentences?
- Make a note of anything that you are unsure about
- See if you can gain clarity by playing in IRB


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=01_say_hello_to_ruby.md&repository=makersacademy%2Fruby_foundations&redirect=chapter1%2F02_error_messages.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F01_say_hello_to_ruby.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F01_say_hello_to_ruby.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F01_say_hello_to_ruby.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F01_say_hello_to_ruby.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F01_say_hello_to_ruby.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
