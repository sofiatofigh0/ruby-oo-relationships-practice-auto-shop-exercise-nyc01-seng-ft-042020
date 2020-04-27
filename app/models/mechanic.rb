class Mechanic

  attr_reader :name, :specialty
  @@mechanic=[]

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@mechanic << self
end

def self.all
  @@mechanic
end

def cars
  Car.all.select do |cars|
    cars.mechanic == self
  end
end

def car_owners
  cars.map do |cars|
    cars.car_owner
  end
end

def car_owners_names
  car_owners.map do |owners|
    owners.name
  end
end


end
