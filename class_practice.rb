##Create an Empty class named 'Person'

class Person
end


##Define three properties on that class 'name','age','birthdate'


class Person
  attr_accessor :name, :age, :birthday
end


##Define 'methods' that allow you to access and set all three of those properties, Do not use attribute accessor
=begin

class Person
  def name
    @name
  end
  def age
    @age
  end
  def birthday
    @birthday
  end
end


=end


##Explain what calling Person.new does
=begin

When you are calling Person.new, you are asking to create a new instance of Person (complete with name, age and birthday if you specify that),
but you aren't saving it to the database. If you want to save it to the database, you will need to use Person.create instead.


=end




##Create an initializer method that allows you do Person.new 'Amy Smith' , which initializes the  Person's name property


class Person
  def initialize(name)
    @name = name
  end
end



##Write a method that outputs the value of the self keyword to the console

class Person
  def self.print_value
    puts "The value of the self keyword"
  end
end


# This is what you would put in the console.
Person.print_value


##Explain in as much detail as possible what self refers to and what it means in the grand scheme of things
=begin

Well, first, I'm not sure we've covered self much in class, but I'll give it my best go.

Self refers to the class it is a part of. When you use self to define a method,
you create a class method. What does this mean exactly? It allows you to refer
to the current instance of the class.

=end

##Explain what object instantiation means:
=begin

Object instantiation is when an instance of an object is created through a Ruby class.
This occurs through the new method.

=end



#What is the difference in scope between an instance variable vs a local variable?
#Which one is the instance variable and which one is the local variable?
class PersonC

  @name = "Amy"

  def print_name
    name = "Bob"
    puts name
  end

  def name
    puts @name
  end

end

=begin

In this case, the instance variable is @name (defined as "Amy").

Instance variables can be accessed from anywhere in the class, where a local variable is only accessible by the method in which it is defined.
Therefore name = "Bob" would be the local variable because it can only be accessed by calling the method print_name.

=end


#Explain in detail what a method is

=begin

Ruby methods are similar to what we call functions in other languages. Essentially, they are used to group repeatable code statements into
one single chunk of code.

You can then call on that method when you want to pass a certain argument through that method.

=end


##What is the difference between a Class method and an instance method?
class PersonB
  @name = "Hey"

  def self.name
    @name
  end

  def say_name
    puts "name is #{@name}"
  end
end

=begin

Class methods call on a class. Instance methods call on an instance method of a class. Say what?
Concretely, self.name would be a class method. It allows you to call the method and set the @name to "Hey".
The method say_name would be an instance method, and it is just one instance of a method in the PersonB class.
When you call on it, you print "name is Hey".

=end



#Is it possible to add methods to an object after it is created? In other words...is the following code correct?? Explain your answer
class PersonD

  @name = "Bob"

  def say_name

  end

end

person  = PersonD.new

def person.say_name_again
  puts @name
end

person.say_name_again

=begin

I want to say no this is not correct. However, something tells me that it is possible. However, I'm not sure why or how.


=end


#What does the ? mark at the end of a method signify?

=begin

Any method ending in a ? returns a boolean value.


=end


#What does the ! sign at the end of a method signify?

=begin

Any method ending in a ! performs a permanent change. It can raise an exception in some cases.

=end

#What does the * symbol signify when passed as a method parameter?
#Where else is it used in the language and for what purpose?

def do_something *param
  puts param
end

=begin

Great question! I did not know the answer and had to look it up.
In this scenario, the splat is used to covert the array of parameters to a list.

Splats can be used in front of a list to convert the values into an array.

=end
