## Introduction
A getter method is a method that gets a value of an instance variable.
Without a getter method, you can not retrieve a value of an instance 
variable outside the class the instance variable is instantiated from.
### Example 
```
class Movie
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

obj1 = Movie.new('Dare Devil')
p obj1.name #=> "Dare Devil"
```
In the above example a getter method `name` is defined which help in accessing `@name` instance variable,
though the name of a getter method can be anything, it is common practice to name a getter method the instance variable’s name.

A setter is a method that sets a value of an instance variable.Without a setter method, you can not assign a value to an instance variable outside its class.
if you try to set a value of an instance variable outside its class, Ruby raises No Method Error just like it does when you 
try to retrieve a value of an instance variable outside its class without a getter method

### Example 
```
class Movie
  def initialize(name)
    @name = name
  end

  def name #getter method
    @name
  end

  def name=(name) #setter method
    @name = name
  end
end

obj1 = Movie.new('Dare Devil')
p obj1.name #=> "Dare Devil"
obj1.name = 'Commandos'
p obj1.name #=> "Commandos"
```

