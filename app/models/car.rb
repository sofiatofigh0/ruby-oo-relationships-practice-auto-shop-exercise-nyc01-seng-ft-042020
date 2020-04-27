class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic
  @@cars=[]
  @@classifications=[]

  def initialize(make, model,classification,car_owner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner=car_owner
    @mechanic=mechanic
    @@cars << self
    @@classifications << classification
  end

  def self.all
    @@cars
  end

  def self.classifications
    @@classifications
  end

  def self.find_mechanics(classification)
      Mechanic.all.select do |mechanic|
        mechanic.specialty == classification
      end
  end


end
