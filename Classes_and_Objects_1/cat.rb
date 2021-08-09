# Using the following code, create a module named Walkable that contains a method named #walk.
# This method should print Let's go for a walk! when invoked. Include Walkable in Cat and invoke #walk on kitty.

require './Walkable'

class Cat
  include Walkable
  attr_reader :name
  attr_writer :name

  def initialize(name)
    unless defined?(name)
      puts "Please provide a name"
    end
    @name = name
  end

  def greet
    puts "Hi, my name is #{@name}"
  end
end