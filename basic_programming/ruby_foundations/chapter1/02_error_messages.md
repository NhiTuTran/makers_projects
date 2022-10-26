# Error Messages Are Your Friends

We ended the previous section on a cliffhanger, trying to decipher the meaning of an error message. In this short section, you'll see how to break it down and extract useful information.

## Video

Here's the [video](https://youtu.be/INpNa92IUrU) for this section.
## Learning Objectives

By the end of this section, you'll be able to:

- Find the useful bits of information in a basic error message
- Welcome error messages as helpful feedback :)

## Dissecting Your First Error Message

You probably got something a lot like this at the end of the last section. Did you figure out what it means?

```ruby
> hello
(irb):1:in '<main>': undefined local variable or method 'hello' for main:Object (NameError)
Did you mean?  help
	from /Users/eddieandress/.rvm/rubies/ruby-3.0.1/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in '<top (required)>'
	from /Users/eddieandress/.rvm/rubies/ruby-3.0.1/bin/irb:23:in 'load'
	from /Users/eddieandress/.rvm/rubies/ruby-3.0.1/bin/irb:23:in '<main>'
2.7.0 :002 >
```

Because we didn't use quotation marks, Ruby doesn't recognise `hello` as a `String`. Instead, `hello` is interpreted as a variable, or method (more about those later) which has not yet been defined. I.e. Ruby doesn't know what that `hello` thing is, only that it's not a String!

In this case, the most useful part of the error message is the first line:

```ruby
(irb):1:in '<main>': undefined local variable or method 'hello' for main:Object (NameError)
```

Let's break it down. The start of that first line, tells us that the error is on line 1:

```ruby
(irb):1
```

If we'd been using IRB for a while and had entered some other commands prior to this one, placing the error on line 11, we would see this instead.

```ruby
(irb):11
```

The middle bit is where `undefined method or variable` is expressed:

```ruby
undefined local variable or method 'hello'
```

The rest of this error message is less useful to us because it points to code that is part of the Ruby library (and that is very rarely the source of our problems).

## Another Error

Now do this to generate one more error message and try to figure out what it is telling you.

```ruby
> 1 + 'a'
```
## Reflect and Review

In this section, we picked apart an error message to find the useful information. Hopefully, you'll welcome the next one you see as a helpful old friend :)

**Please pause at this point to reflect and review your learning...**

- How much of each error message was actually useful to you?
- Can you resolve to say "That's interesting!" next time you see an error message?


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=02_error_messages.md&repository=makersacademy%2Fruby_foundations&redirect=chapter1%2F03_beyond_concatenation.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F02_error_messages.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F02_error_messages.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F02_error_messages.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F02_error_messages.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F02_error_messages.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
