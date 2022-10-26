# Arrays

An Array is a collection, or list, of items. Arrays are extremely useful and commonly used in many different programming languages. In this section, you'll learn about how to use them, in Ruby.

## Video

The video for this section is in two parts...

- [Here's the first part](https://youtu.be/I_oMPekZLwM)
- [Here's the second part](https://youtu.be/NB6dau9kr6Q)

## Learning Objectives

In this section, you will learn:
- How to create Arrays, in Ruby
- How to add items to an Array
- How to read / retrieve a single item in an Array
## Part One: Creating an Array

An array of the numbers 1 to 9 would look like this.

```ruby
> [1, 2, 3, 4, 5, 6, 7, 8, 9]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

Try creating some arrays IRB now.

Ruby arrays can contain anything – Strings, Integers, Floats, Symbols, Booleans – you can even create arrays of arrays, but let's not do _that_ yet!

## Part Two: Adding Items to an Array

If you want to add things to an array, you can use the `<<` method.

```ruby
> my_array = []
=> []
> my_array << "hello"
=> ["hello"]
> my_array << "world"
=> ["hello", "world"]
```

## Part Three: Accessing Items in an Array

You can access elements in arrays based on their position. To do that, use the `[]` method, combined with the item's index. Note that the index of the first item in a Ruby array is 0, not 1.

```ruby
> # create an array
> my_array = ["hello", "world"]
=> ["hello", "world"]
> # access the first element
> my_array[0]
=> "hello"
> # access the second element
> my_array[1]
=> "world"
```

> What happens if you create an array of two items called `my_array` and then do `my_array[3]`? Try it now.

> What happens if you try to do `my_array[-1]`? Try that as well!

## Part Four: An Array of Passwords?

Could we use an Array to store a list of passwords? Probably, yes, we could. Would it be the best option, probably not, no. Let's find out why.

We could build an array that just contained passwords, like this.

```ruby
> passwords = ["password", "123456", "qwerty"]
=> ["password", "123456", "qwerty"]
```

That would be fine, but there's no record of which service each password is for. So we could build an array that contained passwords and their associated services.

```ruby
> passwords = ['acebook', '12345678!', 'makersbnb', 'qwertyu123!']
=> ["acebook", "12345678!", "makersbnb", "qwertyu123!"]
```

But this is going to get messy very quickly – for example, some passwords might look like service names, and vice versa, which will get confusing in the middle of a long array. A further option would be to build a nested array – an array of arrays and, at first, this might seem tempting but remember the [Law of Instrument](https://en.wikipedia.org/wiki/Law_of_the_instrument)!

```ruby
> # a nested array where each sub-array contains a service name and password
> passwords = [["acebook", "12345678!"], ["makersbnb", "qwertyu123!"]]
=> [["acebook", "12345678!"], ["makersbnb", "qwertyu123!"]]
```

It's a little better since each password is now stored alongside the name of a service, but to find the password for a specific service, we'd have to search through the array of arrays, which is not very efficient. We can do much better than an array of arrays, by using a Hash, which is what we'll do in the next section.

## Part Five: Array Methods

So, we won't use an Array for storing the passwords but they will come in handy at some point so let's dig a bit deeper.

In Chapter 1, you learned about String methods, which can be called on any String. In this section, you'll learn about Array methods, which can be called on any Array. We'll start with some simple examples in this section, then in chapter 3 you'll see some more advanced methods.

Call each of these methods on an array of Integers `[1,2,3,4,5]`. Be sure to check the array after each one, to see if has been changed (or _mutated_).

- `last`
- `first`
- `pop`
- `shift`
- `sum`
- `max`
- `min`
- `sample`

Some of them will also work on an Array of Strings `['cat', 'potato', 'ruby', 'senegal', 'purple']`.  Try them out!

You can find more [Array methods]((https://ruby-doc.org/core-3.0.0/Array.html)) in the Ruby Docs.

## Reflect and Review

In this section, we introduced the concept of an array and how to use it. We also learned how to create arrays, add items to arrays, and access items in arrays. They're very useful but they are not the solution to every problem, just like the hammer is not the right tool for every job.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain:
- What an array is
- How to create an array
- How to add items to an array
- How to access items in an array


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=02_introducing_arrays.md&repository=makersacademy%2Fruby_foundations&redirect=chapter2%2F03_introducing_hashes.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F02_introducing_arrays.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F02_introducing_arrays.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F02_introducing_arrays.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F02_introducing_arrays.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F02_introducing_arrays.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
