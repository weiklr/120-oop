# frozen_string_literal: true

require './vehicle'

# Truck
class Truck < Vehicle
  attr_accessor :bed_type

  def initialize(year, bed_type)
    super(year)
    self.bed_type = bed_type
    start_engine
  end

  def start_engine
    puts 'Ready to go!'
  end

end
