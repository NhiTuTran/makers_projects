# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

#Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
┌────────────────────────────┐
│ Takeaway                   │
│                            │
│ - view(menu)               │
│ - order(dish, quantity)    │
│ - receipt                  |
| - delivery                 │
└───────────┬────────────────┘
            │
            │
            ▼
┌─────────────────────────┐
│ Menu                    │
│                         │
│ - add(dish, price)      │
│ - all                   │
└─────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class Takeaway
  def initialize
    # ...
  end

  def view
    # Returns a list of dishes and prices
  end

  def order(dish, quantity) # dish is a string and quantitiy is an integer
  end

  def receipt
    # Returns a list of orders and grand total as strings
  end
end

class Menu
  def initialize
    # ...
  end

  def add(dish, price) # dish and price are both strings
    # Dishes and prices are added to the menu
    # Returns nothing
  end

  def all
    # Returns a list of dishes and prices
  end
end

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# Returns the menu
menu = Menu.new
takeaway = Takeaway.new(menu)
menu.add("Dish 1", "£5.50")
menu.add("Dish 2", "£10.50")
menu.add("Dish 3", "£12.50")
takeaway.view(menu) # => {"Dish 1" => "£5.50", "Dish 2" => "£10.50", "Dish 3" => "£12.50"}

# Saves the order
menu = Menu.new
takeaway = Takeaway.new(menu)
menu.add("Dish 1", "£5.50")
menu.add("Dish 2", "£10.50")
menu.add("Dish 3", "£12.50")
takeaway.order("Dish 1", 1)
takeaway.order("Dish 3", 2)
takeaway.receipt # => "Your order:\n\nDish 1 - £5.50\nDish 3 - £12.50 (x2)\n\nGrand total: £30.50"

# Fails when given a non-existent dish
menu = Menu.new
takeaway = Takeaway.new(menu)
menu.add("Dish 1", "£5.50")
menu.add("Dish 2", "£10.50")
menu.add("Dish 3", "£12.50")
takeaway.order("Dish 4", 1) # => fail
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# Returns a list of dishes and prices
menu = Menu.new
menu.add("Dish 1", "£5.50")
menu.add("Dish 2", "£10.50")
menu.add("Dish 3", "£12.50")
menu.all # => {"Dish 1" => "£5.50", "Dish 2" => "£10.50", "Dish 3" => "£12.50"}
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._