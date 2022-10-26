# Hashes Part II

In chapter 2, you learned how to create and manipulate hashes.

```ruby
> # create a hash and assign it to the person variable
> person = {'name' => 'jo', 'age' => 42, 'height' => 170}
> # add a new key-value pair
> person['pet'] = 'cat'
> # add a new key-value pair
> person['job'] = 'software engineer'
> person
=> {'name' => 'jo', 'age' => 42, 'height' => 170, 'pet' => 'cat', 'job' => 'software engineer'}
```

You also know how to get an array of all the keys or all the values using `person.keys` and `person.values`. Now it's time to take things a little further.

## Video

Here's the [video](https://youtu.be/606Npc3rJSs) for this section.

## Learning Objectives

In this section, you will learn about:
- Hash methods which take blocks

## More Blocks

It turns out that pretty much all the array methods which take blocks can also be called on hashes, but there is one key difference. Try this... (note that you need to use `to_s` on the `key_value_pair`)

```ruby
> person = {'name' => 'jo', 'age' => 42, 'height' => 170}
> person.each { |key_value_pair| puts "key value pair: " + key_value_pair.to_s }
```

When you iterate over a hash, you're iterating over all the key-value pairs and each one is passed to the block as a two element array (which is why `to_s` is required).

It's possible to _deconstruct_ the key-value pairs as they're passed into the block and create a separate variable for each one, like this... (note that, once again, `to_s` is required)

```ruby
> person = {'name' => 'jo', 'age' => 42, 'height' => 170}
> person.each { |key, value| puts "key: " + key + " value: " + value.to_s  }
```

Note how there are now two block variables `|key, value|`.  As before, you can use any name you like, but it's helpful to other developers (and your future self) if you choose something descriptive.

## Now Try These

The syntax for all these methods is basically the same, but the return values will be different. Try them out now on a hash of your own design.

- `select`
- `all?`
- `any?`
- `filter`
- `reject`

## Map and Each

Both `map` and `each` also work with hashes. Try them out as well :)

## Reflect and Review

In this section, we dug a bit deeper into Hashes.

**Please pause at this point to reflect and review your learning...**

Write some short notes, or talk to a peer, about:
- What blocks are (again)
- How blocks used with Hash methods are different to those used with Array methods
- How you can access both the keys and values inside the block


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=05_advanced_hashes.md&repository=makersacademy%2Fruby_foundations&redirect=chapter3%2F06_putting_chapter_3_into_practice.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F05_advanced_hashes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F05_advanced_hashes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F05_advanced_hashes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F05_advanced_hashes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter3%2F05_advanced_hashes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
