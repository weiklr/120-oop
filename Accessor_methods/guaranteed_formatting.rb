# Using the following code,
# add the appropriate accessor methods
# so that @name is capitalized upon assignment.
class Person
  attr_reader :name

  def name=(name)
    # << is shorthand for concat for faster string concatentation
    # this is so we don't create a new string object everytime if we do a +
    @name = name[0].upcase << name[1..name.length - 1].downcase
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name