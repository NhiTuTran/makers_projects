# Chapter 1 Challenges

Well done for reaching the chapter 1 challenges! Here, you'll find two types of exercise: drills and a programming challenge. Do the drills first and then move onto the programming challenge. You must complete both before going [back](../09_putting_it_into_practice.md) to reflect on your progress.

## Initial Setup

### Getting the Code

To get the exercises onto your machine, you'll need to fork and then clone this repo.

If you're not sure how to do that, watch [this short video](https://youtu.be/QWV5-UNNSLI).

### Installing Dependencies

Before starting either the drills or the programming challenge, you need to install some dependencies - programs upon which these exercises depend.

In Ruby, dependencies are managed using two tools `gem` and `bundle`.  You'll need to install `bundler` to use the latter.

```shell
; gem install bundler
```

**Reach out to your cohort and then your coach if you have any problems installing `bundler`**

Once you have `bundler` installed, you can use it to install all the gems listed in `Gemfile`. Make sure you're in the `challenges` directory (for chapter 1) and then...

```shell
; bundle install
```

This will install `rspec`, which we used to write the tests (more about that below) and, also, all of RSpec's dependencies.

## RSpec

RSpec is a tool used to write tests that ensure your program does what it needs to do. In the near future you'll be writing your own tests but, for now, you'll use the tests that we wrote for you.

Your goal is to make all the tests pass.

To run the tests, make sure you're in either the `drills` or `program` directory and then run `rspec`. This will execute all the tests inside the `spec` directory.

You might see this at some point...

```shell
0 examples, 0 failures
```

It means that RSpec cannot find your tests and, normally, it's the result of running `rspec` in the wrong directory.

We've added some configuration in the `.rspec` file so that when a test fails, rspec will stop running and show you the output from that failing test. This allows you to focus on one test at a time. Once you make that failing test pass, when you do `rspec` again the next test will run and fail.

## Drills

Drills are short, tightly focused exercises which get harder as you progress. You will only need to work in the `lib` directory. Do not change anything in the `spec` directory.

> Please [zip up](../../pills/creating_zipfiles.md) and submit your code using the form at the end of this file.

### Getting Started

1. Find the first set of drills
    * For chapter 1, that's `/drills/lib/1_calling_methods.rb`
    * You'll find further instructions there
2. Work on the first challenge
3. Run `rspec` to check your answer
4. Keep going until all the tests for that set of drills are passing
5. Move on to the next set
6. Keep going until all the tests for all the sets are passing
7. [Zip up](../../pills/creating_zipfiles.md) your code so that you're ready to share it later
8. Move on to the programming challenge

## Programming Challenge

In this exercise you'll bring together several different concepts to build a password validator.

> Please do a [screen recording](../../pills/screen_recordings.md) of yourself working on this exercise so that your coach can see how you're getting on. You can upload it, along with your code, using the form at the end of this file.

### Requirements

The password validator will ensure that a password is compliant with the following rules.

- It must be longer than 7 characters (8 is fine)
- It must contain at least one of the following special characters: `!`, `@`, `$`, `%` or `&`

If the password is valid, the program should return true.  If the password is invalid, the program should return false.

### Decomposing the Problem

It's absolutely critical that you get good at problem decomposition if you want to succeed as a software developer. Simply put, it is the process of breaking down large complex problems into small problems that are easy to solve. If you don't do this, you will eventually get really stuck but if you do it, and do it well, you will be able to build **anything**.

Let's do some problem decomposition, first of all with a non-programming problem – moving house.

Moving house is a complex and stressful problem that can be broken down into very many simpler problems, or tasks. For example...

1. Get lots and lots of boxes
2. Pack your stuff into the boxes
3. Pack the boxes into the van you hired
4. Drive the van to your new home
5. Unpack the boxes from the van
6. Unpack your stuff from the boxes

Each of these can be further broken down...

1. Get lots and lots of boxes
- Get some boxes from Tesco
- Get some boxes from Asda
- Get some boxes from that shop on the corner whose name you've forgotten
- Check if you have lots of boxes
- If you need more boxes, do all of this again tomorrow

**Now let's break down the problem of creating a password validator program...**

1. We'll need an `if` statement
2. There'll be one branch for checking length
3. There'll be one or more branches that check for the presence of special characters

### Getting Started
0. [Start recording](../../pills/screen_recordings.md) 🎥
1. Navigate to the `program` directory on the command line and run `rspec`
2. Work in small steps to complete the `valid?` method in `./lib/password_validator.rb`
3. Run `rspec` regularly to check your progress
4. Keep going until all the tests pass

## Submitting Your Work

Use [this form](https://airtable.com/shr6mk28x0fy3OrxN?prefill_Item=rubyf_ch1) to submit your code and screen recording

## What Next?

Go back [here](../09_putting_chapter_1_into_practice.md#reflect-and-review) to reflect on your progress before moving on.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2Fchallenges%2FREADME.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2Fchallenges%2FREADME.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2Fchallenges%2FREADME.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2Fchallenges%2FREADME.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_foundations&prefill_File=chapter1%2Fchallenges%2FREADME.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
