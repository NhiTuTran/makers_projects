# Hashes

Hashes are a bit like Arrays, because they also allow you to store a collection of things. Hashes, however, allow you to associate a label with each of your items, which can help to make your data a little easier to understand.  Consider the array below...

```ruby
> ['pippa', 25, 'percy', 'swimming', 'football', 327]
```

What exactly does each element correspond to? It's hard to tell without labels and that's where Hashes come in. Most programming languages include something along the lines of a Hash. They might use a different name, like HashMap or Dictionary, but the basic concept is always the same.

## Video

Here's the [video](https://youtu.be/XYw5GQEoNqk) for this section.

## Learning Objectives

In this section, you will learn

- How to create a Hash, in Ruby
- How to read values stored in Hash
- How to add key-value pairs to a Hash
- How to execute some simple Hash methods

## Part One: Creating a Hash

Hashes are made up of key-value pairs. The _key_ is a label and the _value_ is the piece of data that you wish to store. They look like this.

```ruby
> person = {
>   "name" => "Yukihiro Matsumoto",
>   "nationality" => "japanese",
>   "favorite_programming_language" => "Ruby"
> }
> person
=> {"name"=>"Yukihiro Matsumoto", "nationality"=>"japanese", "favorite_programming_language"=>"Ruby"}
```

**Note that for arrays we use square brackets, but for hashes we use curly braces.**

Now open IRB and create a few hashes of your own. You'll inevitably make a mistake at some point and Ruby will show you an error message. Try to understand it – new error messages can be learning opportunities!

After you've created a few hashes, try using something other than a String for the keys. What works? What doesn't work?

### Remember Symbols?

In Ruby, it's very common to use symbols as keys – mostly because it looks prettier but it's also easier to type, due to another Ruby quirk. Here's an example...

```ruby
> { name: 'Sandi Metz' }
=> { :name => 'Sandi Metz' }
```

Notice that what I typed and what got returned are not identical. Ruby allows you to do a kind of short-hand when symbols are used as keys and I was able to omit the `=>`. This saved me two slightly awkward keystrokes - win! When reading and executing this code, the Ruby interpreter added in the `=>` and changed the symbol back to its normal form.  Hence, we see `ruby { :name => 'Sandi Metz' }` returned.

In the examples below, we use Strings as keys but you're welcome to use symbols instead, if you prefer. You'll also see people doing this online, if you search for help.

## Part Two: Reading Individual Values

Once you have a hash, you can read an individual _value_ using its _key_.

```ruby
> # first create and assign the person hash, as above, then...
> person['name']
=> "Yukihiro Matsumoto"
> person['nationality']
=> 'japanese'
```

Do this a few times to get some practice.

## Part Three: Adding Key-Value Pairs

If you already have a hash and wish to add new key-value pairs, you can do so using the `[]` method.

```ruby
> # first create and assign the person hash, as above, then...
> # add a key-value pair
> person["birthday"] = "14 April"
> # add another key-value pair
> person["favourite_colour"] = "reddish"
> # observe that the hash has changed
> person
=> {"name"=>"Yukihiro Matsumoto", "nationality"=>"japanese", "favorite_programming_language"=>"Ruby", "birthday"=>"14 April", "favourite_colour"=>"reddish}
```

Now you do the same! Create a new hash and add some key-value pairs as shown above. Better still, do that a few times so that you start to build some familiarity with the `[]` method.

## Part Four: More Hash Methods

In section 2 we learned about `Array` methods, which are methods that you can call on any `Array`.  We also saw how you can find new Array methods using the Ruby docs.

In this section, you'll learn some `Hash` methods which, unsurprisingly, you can call on any `Hash` and, of course, you can find new `Hash` methods using the Ruby docs.  For Ruby version 3.0.0, you'll find them [here](https://ruby-doc.org/core-3.0.0/Hash.html).  If you're using another version, go to the same link and then edit the URL to reflect the version you're using.

Recall the requirement below...

> Allow you to see a list of all the services for which a password has been stored

To meet this requirement, we'll need a method that returns all the hash keys.

If you feel like a challenge, try to find the method that returns all the `Hash` keys as an `Array`, using the Ruby docs (or google).  The solution is below.

<details>
  <summary>Solution</summary>
  <img src="../images/hash_keys.png"></img>
</details>
<br>

Now get some practice with that method and the ones listed below, some of which will require an argument – use the Ruby docs to find out more.

- `values`
- `length`
- `empty?`
- `has_key?`
- `has_value?`
- `clear`
- `shift`

## Reflect and Review

In this section, you learned about how to create and manipulate hashes.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain, in writing or to a peer:
- What a hash is
- How to create a hash
- How to add key-value pairs to a hash
- How to retrieve a value from a hash
- How to retrieve all the keys from a hash
- The use of one other Hash method that you experimented with


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=03_introducing_hashes.md&repository=makersacademy%2Fruby_foundations&redirect=chapter2%2F04_introducing_classes.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F03_introducing_hashes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F03_introducing_hashes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F03_introducing_hashes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F03_introducing_hashes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F03_introducing_hashes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
