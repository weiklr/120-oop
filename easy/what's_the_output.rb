class Pet
  attr_writer :name

  def initialize(name)
    self.name = name.to_s
  end

  def name
    @name.dup
  end

  def to_s
    "My name is #{name.upcase!}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name