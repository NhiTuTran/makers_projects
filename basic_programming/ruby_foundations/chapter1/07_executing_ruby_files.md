# Executing Ruby Files

If you want to build a Ruby program iteratively, which is always the best approach, you'll start by writing something simple and repeatedly tweak or add to it, executing the code after every small change. If you have to write your program in it's entirety every time, you're going to get annoyed very quickly and revert to some less than ideal practices. Plus, you'll soon want to build programs over days, months or years.

So we need to be able to write code in files and execute it from those files. Let's give that a try now.

## Video

Here's the [video](https://youtu.be/XtreBh7TcyQ) for this section.

## Learning Objectives

In this section, you'll learn:
- How to execute Ruby code that is saved in a `.rb` file

Open Terminal or iTerm and `cd` into your home directory (you can use `~` as shortcut)

```shell
; cd ~
```

Then create a file called `hello_world.rb`.

```shell
; touch hello_world.rb
```

The file will be inside your home directory – open it up in your text editor, add the following Ruby code and save the file using `command + s`.

**Below, `puts` is used to print `"Hello world!` to the terminal. We need it here because simply doing `"Hello, World!"` wouldn't result in anything that we can see from the terminal (do try it). You'll find further guidance on when to use `puts` at the end of this section.**

```ruby
# in hello_world.rb – lines that start with # are comments (you don't need to type them out)
puts "Hello World!"
```

Now you can execute the code in that file like this

```shell
; ruby hello_world.rb
```

You should see `"Hello, World!` printed to the terminal. If so, mission accomplished. The `ruby` command invokes the Ruby _interpreter_, which is the program that runs your Ruby code.

> If you see an error message that contains `No such file or directory`, you're probably in the wrong directory in your terminal.

Now use this as a chance to practice some of the things we've covered previously. Be sure to `puts` anything that you would like to see printed to the terminal.

- Create a few more files using `touch`
- Add some ruby code to each one
- Use some of the String methods you encountered in earlier sections
- Execute the code using `ruby new_file.rb` if, for example, your file is called `new_file.rb`

## When do I use `puts`?

Let's imagine the following code:

```ruby
word = "Ruby"
uppercase_word = word.upcase
"#{word} upcased is #{uppercase_word}"
```

If we run this in IRB here's what we get:

```ruby
> word = "Ruby"
=> "Ruby"
> uppercase_word = word.upcase
=> "RUBY"
> "#{word} upcased is #{uppercase_word}"
=> "Ruby upcased is RUBY"
```

That's nice for us. We get to see all the results in the middle so we can check they are correct. This is very useful and it is what IRB is designed for. But users don't want to see all of those results in the middle. They just want the final results! So when we're running Ruby in a file (like `hello_world.rb`) Ruby keeps all the return values to itself and doesn't show them to the user. To show something to the user, we have to say so explicitly. This is what `puts` does. It stands for **put** **s**tring (to the terminal so the user can see it).

We could do something like this, in a file called `upcase_ruby.rb`

```ruby
 # File: upcase_ruby.rb
word = "Ruby"
uppercase_word = word.upcase
puts "#{word} upcased is #{uppercase_word}"
```

And then execute the code...

```shell
; ruby upcase_ruby.rb
```

To see this in the terminal...

```shell
Ruby upcased is RUBY
```

To signal that we're showing something to the user and rather than storing a value for later use, `puts` doesn't return anything. Look:

```ruby
> greeting = puts "Hello"
> greeting
=> nil
```

Here's a rule of thumb:
1. Is this something you want to show the user right now with no further
processing? If so, use `puts`.
2. Is this something the program will need to do some further work with before
it's ready for the user? If so, don't use `puts`.

## Reflect and Review

In this section, you learned a second way of executing Ruby code – this time from a file.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain:
- How to execute Ruby code that is written in a file
- What happens when you try to execute code from a file that doesn't exist
- The pros and cons of this new approach to code execution

## Try some extra exercises

Put your understanding to the test!

1. What happens if you change the first `greeting` to something else? Say for example, `potato`?

    ```ruby
    > potato = puts "Hello"
    > greeting
    => nil
    ```

2. What happens if you change the second `greeting` to something else? Say for example, `bamboo`?

    ```ruby
    > potato = puts "Hello"
    > bamboo
    => nil
    ```
3. Take a look at the command you need to run your code:

    ```shell
    ; ruby upcase_ruby.rb
    ```

    If you were to guess at one part of that line being the _parameter_, which would it be?

[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=07_executing_ruby_files.md&repository=makersacademy%2Fruby_foundations&redirect=chapter1%2F08_defining_methods.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F07_executing_ruby_files.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F07_executing_ruby_files.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F07_executing_ruby_files.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F07_executing_ruby_files.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2F07_executing_ruby_files.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
