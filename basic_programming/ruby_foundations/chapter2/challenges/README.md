# Chapter 2 Challenges

Well done for reaching the chapter 2 challenges!

Do the drills first and then move onto the programming challenge. You must complete both before going [back](../06_putting_it_into_practice.md) to reflect on your progress.

## Initial Setup

### Installing Dependencies

You don't need to install bundler again, but you should consider this set of exercises to be a new project with its own dependencies. Make sure you're in the `challenges` directory of chapter 2 and then do this...

```shell
; bundle install
```

**Reach out to your cohort and then your coach if you have any problems at this point**

## RSpec

Once again, RSpec will be your guide.

You might see this at some point...

```shell
0 examples, 0 failures
```

It means that RSpec cannot find your tests and, normally, it's the result of running `rspec` in the wrong directory.

## Drills

The process here is the same as it was for chapter 1 but here's a reminder of how to get started.

### Getting Started

1. Find the first set of drills
    * For chapter 2, that's `./drills/lib/1_arrays_and_hashes.rb`
    * You'll find further instructions there
2. Work on the first challenge
3. Run `rspec` to check your answers
4. Keep going until all the tests for that set of drills are passing
5. Move on to the next set
6. Keep going until all the tests for all the sets are passing
7. [Zip up](../../pills/creating_zipfiles.md) your code so that you're ready to share it later
8. Move on to the programming challenge

## Programming Challenge

In this exercise you'll bring together several different concepts to build a password manager. 

> Please do a [screen recording](../../pills/screen_recordings.md) of yourself working on this exercise so that your coach can see how you're getting on. You can upload it, along with your code, using the form at the end of this file.

### Requirements

The password manager will need to:
- Allow you add new, validated, passwords
- Allow you to view a specific password
- Allow you to see a list of all the services for which a password has been stored

### Decomposing the Problem

- You're going to need three methods:
  - `add`
    * Takes two strings, the service and its password, as arguments
    * Stores the new service and its password
  - `password_for`
    * Takes one string, the service, as an argument
    * Returns the password for that service
  - `services`
    * Takes no arguments
    * Returns a list of all the services for which a password has been stored
    * Does not return all the passwords
- The passwords will be stored in hash
  * The keys are services
  * The values are the passwords
- This hash will need to be stored in an instance variable

### Getting Started
1. [Create a class recipe](./baking_a_class.md)
2. [Start recording](../../pills/screen_recordings.md) 🎥
3. Explain the class interface and examples from your recipe
4. Navigate to the `program` directory on the command line and run `rspec`
5. Work in small steps to build Password Manager
6. Run `rspec` regularly to check your progress
7. Keep going until all the tests pass

## Submitting Your Work

Use [this form](https://airtable.com/shr6mk28x0fy3OrxN?prefill_Item=rubyf_ch2) to submit your code and screen recording

## What Next?

Go back [here](../07_putting_chapter_2_into_practice.md#reflect-and-review) to reflect on your progress before moving on.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2FREADME.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2FREADME.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2FREADME.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2FREADME.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter2%2Fchallenges%2FREADME.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
