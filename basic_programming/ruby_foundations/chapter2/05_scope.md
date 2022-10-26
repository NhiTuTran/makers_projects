# Scope

 The term _scope_ refers to the places in which program objects, such as variables, can be used. In the previous exercise, you saw that the local variables `first_name` and `surname` were only available within the `initialize` method.  I.e. Their _scope_ is limited to the `initialize` method.

 Instance variables, however, have a broader _scope_ – they are available anywhere within the instance of a class. So you can assign them in the initialize method and then use them in another method, without problem. They are not, however, available outside the class.

 ## Video

 Here's the [video](https://youtu.be/ivIdU7JmD5g) for this section

 ## Learning Objectives

 In this section, you will learn
 - What scope is
 - What instance variables are
 - The scope of an instance variable
 - The scope of a local variable

## An Example

 Here's a reminder of the example we gave in the previous section

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

Here's how you could fix it, using instance variables

```ruby
> class Person
>  def initialize(first_name, surname)
>    # note that we're not using instance variables here
>    @first_name = first_name
>    @surname = surname
>  end
>  def full_name
>    # will this work without using instance variables above?
>    return "#{@first_name} #{@surname}"
>  end
> end
> alan_turning = Person.new("Alan", "Turing")
> alan_turning.full_name
=> "Alan Turing"
```

## An Analogy

Maybe you'd like an analogy at this point. You could compare instance and local variables to local and national newspapers.

Local variables are like local newspapers in that they're only available, or in scope, within a specific neighbourhood (of the codebase). Instance variables are like national newspapers in that they're available anywhere in the class.

> Note that instance variables are not in scope (available) outside of a class.

## Reflect and Review

In this short section, we learned about scope – the areas of a codebase in which a variable is available.

**Please pause at this point to reflect and review your learning...**

In a few sentences, explain, in writing or to a peer:
- What is the scope of a local variable?
- What is the scope of an instance variable?


[Log your progress and go to the next challenge](https://makers-event-logger.herokuapp.com/?event=05_scope.md&repository=makersacademy%2Fruby_foundations&redirect=chapter2%2F06_chapter_2_review.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F05_scope.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F05_scope.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F05_scope.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F05_scope.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2F05_scope.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
