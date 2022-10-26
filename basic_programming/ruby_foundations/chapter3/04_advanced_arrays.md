# Arrays Part II

In chapter 2, you learned how to define and add elements to ruby arrays.

```ruby
> # create an array and assign it to a variable called numbers
> numbers = [1,2,3]
> # add the number 4
> numbers << 4
=> [1, 2, 3, 4]
```

And in the previous section of this chapter, you saw something new – a method called `find` which is called along with some code in curly braces (a _block_).

```ruby
> password = [
>  {'service' => 'acebook', 'password' => 'password123', 'added_on' => '22/03/22'},
>  {'service' => 'makersbnb', 'password' => 'qwerty789', 'added_on' => '22/03/22'}
> ]
> passwords.find { |password| password['service'] == 'acebook' }
=> {'service'=>'acebook', 'password'=>'password123', 'added_on'=>'22/03/22'}
```

This brings us to a whole new family of methods – methods which 'take' (are called along with) blocks.

## Video

Here's the [video](https://youtu.be/W4r-wZFXGQE) for this section.

## Learning Objectives

In this section, you'll learn about:
- What blocks are
- The structure of a block
- Why blocks are useful
- How to use methods which take blocks

## Methods That Take Blocks

### What are blocks?

Blocks are chunks of code which can be provided to, and used by, some methods. They allow us to modify the function of a specific method, bringing huge flexibility. They can be defined using curly braces (_be careful not to confuse them with hashes!_) or `do` and `end`. As a rule of thumb, use curly braces when your block is on a single line and `do`/`end` if you want to break the block up over multiple lines (see below). For now, most of the examples will use curly braces.

```ruby
[1,2,3,4,5].find do |number|
  number.odd?
end
```

### The Anatomy of a Block

Take `find` as an example – the block of code allows us to find an element based on pretty much whatever we want. Note that find only ever returns one element – the first one for which the block returns `true`.

```ruby
> # find the first entry where 'service' is equal to 'acebook'
> passwords.find { |password| password['service'] == 'acebook' }
=> {'service'=>'acebook', 'password'=>'password123', 'added_on'=>'22/03/22'}
>
> # find the first entry where 'service' is equal to 'makersbnb'
> passwords.find { |password| password['service'] == 'makerbnb' }
=> {'service'=>'makersbnb', 'password'=>'qwerty789', 'added_on'=>'22/03/22'}
>
> # find the first entry where 'added_on' is equal to '22/03/22'
> passwords.find { |password| password['added_on'] == '22/03/22' }
=> {'service'=>'acebook', 'password'=>'password123', 'added_on'=>'22/03/22'}
>
> # find the first entry where 'service' starts with 'a'
> passwords.find { |password| password['service'][0] == 'a' }
=> {'service'=>'acebook', 'password'=>'password123', 'added_on'=>'22/03/22'}
>
> # find the first entry where 'password' is longer than 7 characters
> passwords.find { |password| password['password'].length > 7 }
=> {'service'=>'acebook', 'password'=>'password123', 'added_on'=>'22/03/22'}
```

Let's dig into this a bit more. How exactly does `find` work and what does the new syntax mean?

Well, `find` iterates over (looks at every) element in the array and passes each one to the block of code, like a variable. That variable appears as `|password|` just inside the curly braces.  We could call it anything. For example, this would work...

```ruby
> passwords.find { |ruby_is_awesome| ruby_is_awesome['password'].length > 7 }
```

It's not a very helpful way to do things though. So, typically, developers choose meaningful names for the variable which appears inside the block.

Finally, the block variable `password` is used, as part of a _conditional_, to select an element from the array. Using `find`, an element is selected (and iteration halts), the first time that the block returns true.

### Now Try These

The syntax for all these methods is basically the same, but the return values will be different. Try them out now on an array of numbers and an array of hashes.

- `select`
- `all?`
- `any?`
- `filter`
- `reject`

### Under the Hood

It's often helpful to see how something works, under the hood / beneath the surface / on the inside. So let's take a moment to do this for methods that take blocks, by defining our own simple example.

Imagine you want, for some reason, a method that will ask a question of the middle item in an array of numbers but, crucially, you want to be able to ask any question (that is possible to express in Ruby).

For example...

- Is the middle number greater than 2?
- Is the middle number odd?
- Is the middle number a prime?

You could define a method for every question, or you could define a method which takes a block and is used like this...

```ruby
> middle_number_is?([1,2,3,4,5]) { |middle| middle.odd? }
=> true
```

The `middle_number_is?` method will pick out the middle number and pass it to the block, where it's picked up as the `|middle|` variable and then we can do whatever we want with it. In the example above, we ask whether it is odd, to which the answer is `true`.

What would the method definition look like?  For now, we're only going to work with arrays that are odd in length.

```ruby
def middle_number_is?(array)
  # get the middle number
  middle_number = array[array.length / 2]
  # pass the middle number to the block using `yield`
  yield(middle_number)
end
```

It's actually quite rare that people define methods which takes blocks, so don't feel that you need to completely nail this bit before moving on. If it's helpful to play with this a bit, go for it. If not, don't worry :)

> Challenge: How would you adapt the `middle_number_is?` method to cope with arrays of even length?

### Two More Methods

Two really, really commonly used array methods are `each` and `map`. Importantly, equivalent methods exist in many other programming languages and they work in very similar ways.

The syntax is the same in both cases, but the return values are different. Try them both out now.

**Each**

```ruby
> [1,2,3,4].each {|number| number * 2}
```

Remember that `puts` sends things (prints them) to the terminal and _returns_ `nil`

```ruby
> [1,2,3,4].each {|number| puts number * 2}
```


**Map**
```ruby
> [1,2,3,4].map {|number| number * 2}
```

```ruby
> [1,2,3,4].map {|number| puts number * 2}
```

What's the difference between the two?

<details>
<summary>Click here to check your answer</summary>
<p>
Both <code>each</code> and <code>map</code> iterate through the array, passing every element to the block. The difference is in the return values – <code>each</code> always returns the original and <code>map</code> always returns a new array, with any changes described in the block applied.
</p>
</details>

## Reflect and Review

In this section, we dug a bit deeper into Arrays.

**Please pause at this point to reflect and review your learning...**

This time, you're also going to reflect on some things from previous chapters...

Make some notes, or talk to a peer, about:
- What blocks are and why they're useful
- The anatomy of a block
- The difference between printing to the terminal and returning something
- What scope is


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=04_advanced_arrays.md&repository=makersacademy%2Fruby_foundations&redirect=chapter3%2F05_advanced_hashes.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F04_advanced_arrays.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F04_advanced_arrays.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F04_advanced_arrays.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F04_advanced_arrays.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F04_advanced_arrays.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
