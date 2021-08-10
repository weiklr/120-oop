require_relative 'truck'
require_relative 'car'

truck = Truck.new(2001, 'soft')
truck.tow
puts truck.year

car = Car.new(2002)
puts car.year