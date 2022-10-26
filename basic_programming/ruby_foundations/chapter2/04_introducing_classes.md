# Classes

Classes are used to _encapsulate_, or contain, state (variables) and behavior (methods). Used well, they can help you to organise your code in a way that makes it easier to understand and maintain. They do, however, take a little bit of getting used to. This section is intended to be a gentle introduction to classes and how they work.

## Video

Here's the [video](https://youtu.be/LAQqDpvjT5M) for this section.

## Learning Objectives

By the end of this section, you will be able to:
- Explain the concept of classes
- Define a class with methods and variables
- Create instances of a class

## Part One: Defining a Class

Defining a class in Ruby is pretty straightforward – you need one new keyword, `class`. Let's see how that works.

```ruby
class Greeter
end
```

That's it! Now we have a class called `Greeter`, though it's not very useful. Let's add some methods.

```ruby
class Greeter
  def hello
    return "Hello!"
  end

  def good_bye
    return "Good bye!"
  end
end
```

## Part Two: Instantiating a Class

Great, but what can you do with this? How do you actually execute those methods? First, you need to create an instance of a class. What _is_ an instance?

If the class itself is like a blueprint, an _instance_ of a class is the actual thing that gets built, based on that blueprint. For a real world analogy think of the blueprint for a house and the many houses which could get built, based on that single blueprint. The actual houses are analogous to instances.

Let's create an instance of the class `Greeter` and then execute the `hello` and `good_bye` methods.

```ruby
> greeter = Greeter.new
=> #<Greeter:0x007f9d8b8b9c28>
> greeter.hello
=> "Hello!"
> greeter.good_bye
=> "Good bye!"
```

The `.new` method is called on the actual class itself and it returns an instance of the class, which is assigned to the `greeter` variable. We also see the _return value_ below, which is a reference to the instance we just created. In your case, the value after `#<Greeter:` will be different, but that's fine :) Do it all again and you'll see another value.

Next, we call `hello` and `good_bye` are called on the instance, which return the Strings `"Hello!"` and `"Good bye!"`, respectively.

You'll need to put this new stuff into practice, if you want it to stick. So do that now by building the following classes.

The next two parts rely on one another to make sense, so they won't really make complete sense until you've read them both. Hang in there!

## Part Three: the Initialize Method

If you want something to happen automatically, when a new instance of a class is created, you can put that code inside a special method called `initialize`. Give it a try!

```ruby
> class Greeter
>   def initialize
>     puts "Hello!"
>   end
> end
=> :initialize
> greeter = Greeter.new
"Hello!"
=> #<Greeter:0x00007fdc579a6498>
```

Above, we see that `puts "Hello!"` is executed when you create an instance of `Greeter` using `.new` – we didn't need to call `initialize` ourselves, for that to happen as it was called automatically.

Now define some of your own classes and play with the `initialize` method.

Generally, you'll want to do something more useful that execute `puts` in your `initialize` method. Read on to find out what that might be.

## Part Four: Instance Variables

To really leverage the benefit of classes, we need the ability to give instances of a class unique properties. Imagine, for example, that we wanted to replace the `person` hashes from section 13 with a `Person` class. Instances of the `Person` class would each need their own name, birthday and favourite programming language. We achieve this using instance variables, which are variables that are unique to each instance of a class.

They are declared with the `@` symbol. Here's an example. Note that the instance variables are declared inside of the `initialize` method, because that means they will be assigned automatically when the instance is created.

```ruby
> class Person
>  def initialize
>    @name = "Alan Turing"
>    @birthday = "June 23, 1912"
>    @favourite_language = "C"
>  end
> end
```

But wait! As things stand, every instance of the Person class will have the same name, birthday and favourite language. How can we make sure that each instance has its own name, birthday and favourite language?

To achieve that, we need the ability to pass arguments into the `initialize` method, but if it's getting called automatically, how do we do that? Here's an example.


```ruby
> class Person
>  def initialize(name, birthday, favourite_language)
>    @name = name
>    @birthday = birthday
>    @favourite_language = favourite_language
>  end
> end
> person1 = Person.new("Alan Turing", "June 23, 1912", "Standard Description")
```

All the arguments which we provide to `.new` will be passed into the `initialize` method, automatically! Now we can create lots of people, each with their own name, birthday and favourite language.

```ruby
> person1 = Person.new("Alan Turing", "June 23", "Standard Description")
> person2 = Person.new("Ada Lovelace", "December 10", "n/a")
> person3 = Person.new("Grace Hopper", "December 9", "COBOL")
> person4 = Person.new("John von Neumann", "July 23", "C")
> person5 = Person.new("Claude Shannon", "October 8", "C")
```

Here's a challenge for you – add a method to the `Person` class that will return the person's name. The solution is below.

<details>
<summary>Solution</summary>
<img src="../images/attr_reader.png"></img>
<p>
Methods which return instance variables are called _attribute readers_. Now add attribute readers for each of the other instance variables.
</p>
</details>
<br>

Now try creating your own classes with their own instance variables. If you're not sure what classes to create try these:

- `Animal`
- `Plant`
- `Car`
- `SuperHero`
- `SuperVillain`

## Time to Break Things

Now try this...

```ruby
> class Person
>  def initialize(first_name, surname)
>    # note that we're not using instance variables here
>    first_name = first_name
>    surname = surname
>  end
>  def full_name
>    # will this work without using instance variables above?
>    return "#{first_name} #{surname}"
>  end
> end
> alan_turning = Person.new("Alan", "Turing")
> alan_turning.full_name
=> # what get's returned here?
```

What happens when you run this? Try to explain what you observe – you'll find our explanation in the next section.

## Reflect and Review

In this section, we learned how to define and instantiate a class, how to pass arguments into the `initialize` method and how to create instance variables.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain, in writing or to a peer:

- What is a class?
- How is a class defined?
- What is an instance of a class?
- How is a class instantiated?
- What is an instance variable?
- How are instance variables assigned?
- What is an attribute reader?
- How is an attribute reader defined?


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=04_introducing_classes.md&repository=makersacademy%2Fruby_foundations&redirect=chapter2%2F05_scope.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F04_introducing_classes.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F04_introducing_classes.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F04_introducing_classes.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F04_introducing_classes.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F04_introducing_classes.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
