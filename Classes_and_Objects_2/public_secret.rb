class Person
  attr_writer :secret
  attr_reader :secret

  def initialize; end
end




person1 = Person.new
person1.secret = "this is a secret"
puts person1.secret