# Create a module named Transportation that contains three classes: Vehicle, Truck, and Car.
# Truck and Car should both inherit from Vehicle.
#

require_relative 'transportation'

truck = Transportation::Truck.new(1999)
car = Transportation::Car.new(1998)

