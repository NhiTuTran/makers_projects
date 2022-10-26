# How to Decompose or Deconstruct a Problem

[Stanislavski's metaphor](../../../pills/problem_decomposition.ed.md) gives us a vivid and relatable mental image that we can come back to whenever we're presented with a large problem. As a novice, however, you'll benefit from having a clear method for decomposing problems, so let's extend the metaphor.

Stanislavski's cake needed to be baked and the chef, rather than holding all the instructions in their head, used a recipe that even a novice chef could follow.

## Baking a Class

Today you're going to bake some classes and, like Stanislavski's baker, you'll also use a recipe. Your recipe has four steps, but one of them has already been completed by us. You're welcome!

> Below is a recipe that is specifically designed to help you with `PasswordManager` and `PasswordManager2`. In future, for other exercises, we'll introduce some subtle variations on this theme.

### 1. Describe the Problem

Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

In this exercise, the problem is described for you [here](./README.md#requirements) and [here](./README.md#decomposing-the-problem).

### 2. Design the Class Interface

In a general sense, an interface is where two things come together and interact. You, most likely, interact with your phone via the user-_interface_ on its screen.

Class interfaces are made up of methods - specifically the names, arguments and return values - since this is how we would interact with instances of that class. I.e. We interact with an instance of a class by calling its methods.

> What would the interface for `PasswordManager` look like? Try to sketch it out and then take a peek at our suggestion below.

<details>
  <summary>PasswordManager Interface</summary>
  <img src="../../images/password_manager_interface.png"></img>
</details>

### 3. Create Examples

Think about what it will look like to use this program, once it's completed, and how you expect it to behave. Write them all down now. For `PasswordManager`, you might start off like this...

```
# This should create an instance of password manager
password_manager = PasswordManager.new

# this should allow me to add a passwords
password_manager.add("Acebook", "password123")
password_manager.add("MakersBnB", "superpassword123")

# this should show me an array of all services
password_manager.services
```

### 4. Implement the Behaviour

Start to implement the behaviour that you wish your program to have, but remember only to eat small slices of the cake! Use the automated tests to guide you but, also, keep going back to IRB to do some manual testing (see below).

Remember that when you're dealing with changing state, such as a collection of stored passwords, you'll need to consider three things before the test/s will pass...

1. The initial state and how that is set up.
2. How the state is changed
3. How the new state is then checked

#### Testing Manually, as You Go

As you build the your program, play with it in IRB, using the examples you created earlier. For `PasswordManager`, that would look like this...

##### 1. Start IRB and require your password manager code

```shell
; irb -r password_manager.rb
```

##### 2. Create an instance of `PasswordManager`

```ruby
> password_manager = PasswordManager.new
```

##### 3. Add a password and list the services

```ruby
> password_manager.add("Acebook", "password123")
> password_manager.add("MakersBnB", "superpassword123")
> password_manager.services
```

> Any time you get stuck, go back to IRB and manually test your program to see how its current behaviour differs from the requirements.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2Fbaking_a_class.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2Fbaking_a_class.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2Fbaking_a_class.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2Fbaking_a_class.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2Fbaking_a_class.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
