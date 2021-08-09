# frozen_string_literal: true

# Cat class
#
# class instance variables vs class variables
# @@number_of_cats is a class variable while @number_of_cats is a class instance variable
# class variables are shared across all subclasses and the class while class instance only belong to a specific class
# Unless intended, it is generally recommended to use class instance variables to prevent unnecessary overriding a global variable shared across all subclasses like class variables
# source: https://www.ruby-lang.org/en/documentation/faq/8/
class Cat
  attr_accessor :name

  @@number_of_cats = 0

  DEFAULT_COLOR = 'purple'

  def initialize(name)
    self.name = name
    @@number_of_cats += 1
  end

  def rename(name)
    self.name = name
  end

  def identify
    self
  end

  def greet
    personal_greeting
  end

  def personal_greeting
    puts "Hello! My name is #{name} and I'm a #{DEFAULT_COLOR} cat"
  end

  def self.generic_greeting
    puts "Hello! I'm a cat"
  end

  def to_s
    "I'm #{name}"
  end

  def self.total
    puts @@number_of_cats
  end
end
