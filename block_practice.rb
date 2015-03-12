#ENUMERABLE


#**TODO ENTER CODE**
# * Output all the methods of the Enumerable class to the console

Enumerable.instance_methods.sort



# **TODO ENTER CODE **
# * create a class called Persons that hand rolls an 'each' iterator method, inside of which you
#   define some names, the each method will allow you to iterate over these
#   This means that the class you create...say Person... will respond to Person.each.
# * use a normal each loop to iterate over the class and output the names to the console.

class Persons
  include Enumberable

  def each
    yield "Kevin"
    yield "Lauren"
    yield "Bo"
    yield "Denise"
  end

end



# **TODO ENTER CODE**
# * Find a name starting with 'a', you will need to include the Enumerable module into Persons, make sure you have a name
#   starting with 'a'

class Persons
  include Enumberable

  def each
    yield "Kevin"
    yield "Lauren"
    yield "Bo"
    yield "Denise"
    yield "Alice"
    yield "Bob"
  end

end

p = Persons.new
p.select


#### Argh! I'm stuck on this one. I have an idea of how it can work without Enumerable, but I'm not sure with the Enumerable methods how to make it work.
# Alternatively, perhaps you can use a regex to determine if the first letter matches a?

# **TODO ENTER CODE**
# * Check if 'bob' is included in your names

p = Persons.new
p.find("Bob")


# **TODO ENTER CODE**
#Search for if there is one name that has a space in it

p.find { |i| i = "" + " " + ""}

# I'm a little stuck on this but believe it has to do with concatenation, where you would look for a string that has a space in it.


# **TODO ENTER CODE**
# * Create an array of numbers 1-10
# * Search an array to find all matches for numbers greater than 5

[1,2,3,4,5,6,7,8,9,10].select { |i| i > 5 }


# **TODO ENTER CODE**
# * Do the opposite as above, using the exact same block, but a different method, return all numbers that are less
#   than 5

[1,2,3,4,5,6,7,8,9,10].reject { |i| i > 5 }


# **TODO ENTER CODE**
# * Create an array of colors: red, orange, yellow,green,violet,indigo
# * Using a regex search the array to see which entries contain 'o'

["red", "orange", "yellow", "green", "violet", "indigo"].any { |i| i = [o] }
