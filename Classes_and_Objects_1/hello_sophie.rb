# Using the code from the previous exercise, add a parameter to #initialize that provides a name for the Cat object.
# Use an instance variable to print a greeting with the provided name. (You can remove the code that displays I'm a cat!.)
require_relative "cat"

kitty = Cat.new('Sophie')
kitty.greet

kitty.name='Luna'
kitty.greet