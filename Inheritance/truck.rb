# frozen_string_literal: true

require './vehicle'
require './towable'
# Truck
class Truck < Vehicle
  attr_accessor :bed_type, :speed
  include Towable

  def initialize(year, bed_type)
    super(year)
    self.bed_type = bed_type
    start_engine
  end

  def start_engine(speed = nil)
    if speed
      puts "Ready to go! Drive #{speed} please!"
    else
      puts 'Ready to go!'
    end
  end

end
