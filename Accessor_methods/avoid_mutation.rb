# The following code is flawed. It currently allows @name to be
# modified from outside the method via a destructive method call.
# Fix the code so that it returns a copy of @name instead of a reference to it.
# there's a subtle difference between dup and clone when copying ruby objects
#  dup copies the object but does not freeze the duplicated object while clone does.
#  both dup and clone only do shallow copying of objects
# https://www.rubyguides.com/2018/11/dup-vs-clone/

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.dup
  end
end

person1 = Person.new('James')
puts person1.name.reverse!
puts person1.name
