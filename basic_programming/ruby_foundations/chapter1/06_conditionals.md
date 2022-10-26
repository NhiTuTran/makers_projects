# Conditionals

Sometimes, in real life, we might want to act only when certain conditions are met. For example, you might decide that you're only going for a picnic if it's not raining or that you'll only try to make a cake if you have all the ingredients.

<img alt="Flowchart representing the above decisions" src="../images/ifs_flowchart.svg" width="500">

<!-- OMITTED -->  

In programming, as in life, we need the ability to make decisions based on data.

## Video

Here's the [video](https://youtu.be/jCcQ4F-nIYc) for this section.

## Learning Objectives

In this section, you'll learn

- How to let your program make decisions, using _if statements_

## Part One: If / Else

A really common way to implement this in Ruby is to use an `if` statement.  Here's an if statement is to decide which of two Strings is returned.

```ruby
> name = "Pedro Luis Gonçalo da Costa"
> if(name.length > 25)
>   "that's a very long name"
> else
>   "that's not a very long name"
> end
```

_This might seem like a silly example, because we could just count the letters in `name`. But imagine that you don't know what value `name` holds – maybe it came from a user and maybe it will be different for every user.

Let's break down the `if` statement. On the first line (after assigning `name`) we have `if(name.length > 25)`. The part in brackets will _resolve_ to (return) either `true` or `false`. If it resolves to `true`, the code on the third line `"that's a long name"` is executed (and the remaining code is skipped). If `name.length > 25` resolves to `false`, the next line is skipped. Then we have a _catch all_ (else) clause. It covers all situations where `name.length > 25` resolves to false. Note that `if` statements end with `end`.

<!-- OMITTED -->

Open up IRB and try the following. Each line should resolve to either `true` or `false`.

```ruby
> "hello".length > 2
```

```ruby
> "hello".length > 10
```

```ruby
> "hello".count("l") > 1
```

```ruby
> "hello".count("o") > 2
```

## Part Two: Elsif

In many situations there will be more than one thing that we wish to check, which means we need some more _branches_ on our `if` statement. These can be added using `elsif`.

```ruby
name = "Edward Smith"
> if(name.length > 25)
>   return "That's a very long name"
> elsif(name.length > 20)
>   return "That's a long name"
> else
>   return "That's not a particularly long name"
> end
```

Now open up IRB and try playing with some `if` statements. Try adding more and more branches. See what happens if you leave off the `end`.

## Reflect and Review

In this section we covered `if` statements and how they can be used in a program to make decisions.

> At this point, you might be getting sick of having to write out every line of code, every time. You'll see how to avoid that in the next section.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain:
- What is meant by conditional
- How the `if` and `elsif` branches of an if statement work
- How the `else` branch of an if statement works


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=06_conditionals.md&repository=makersacademy%2Fruby_foundations&redirect=chapter1%2F07_executing_ruby_files.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F06_conditionals.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F06_conditionals.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F06_conditionals.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F06_conditionals.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F06_conditionals.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
