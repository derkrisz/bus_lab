class Bus

def initialize(route_number, destination)
  @route_number = route_number
  @destination = destination
  @passengers = []
end

def drive(string)
  return string
end

def number
  return @passengers.count
end

def passengers_add(person)
  @passengers.push(person)
end

def passengers_remove(person)
  @passengers.delete(person)
end

def empty_bus
  @passengers.clear
end

end
