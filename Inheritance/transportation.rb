module Transportation
  class Vehicle
    attr_reader :year

    def initialize(year)
      @year = year
    end
  end

  class Car < Vehicle
    def initialize(year)
      super
      puts "car #{self.year} from module!"
    end
  end

  class Truck < Vehicle
    def initialize(year)
      super
      puts "truck #{self.year} from module!"
    end
  end
end