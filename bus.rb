class Bus

attr_accessor :route, :destination, :passengers

    def initialize (route, destination, passengers)
        @route = route
        @destination = destination
        @passengers = []
    end


    def drive(noise)
      return "The bus goes #{noise}"
    end

    def number_of_passengers(number)
      return @passengers.count
    end

    def add_passenger(person)
      @passengers.push(person)
    end

    def drop_off_passenger(left)
      @passengers.delete(left)
    end

    def empty(empty_bus)
      @passengers.clear if destination == empty_bus
    end
end
