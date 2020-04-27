require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car_owner1=CarOwner.new("sofia")
car_owner2=CarOwner.new("sepi")
car_owner3=CarOwner.new("mitra")
mechanic1=Mechanic.new("mike","engine")
mechanic2=Mechanic.new("moke","tires")
mechanic3=Mechanic.new("mope","design")
mechanic4=Mechanic.new("dope","tires")
car1=Car.new("bentley",1,"engine",car_owner1,mechanic1)
car2=Car.new("chrysler",2,"tires",car_owner3,mechanic2)
car3=Car.new("rolls royce",3,"tires",car_owner1,mechanic3)
car4=Car.new("ferrari",4,"design",car_owner2,mechanic3)
car5=Car.new("lambo",5,"tires",car_owner1,mechanic2)
car6=Car.new("bmw",6,"design",car_owner3,mechanic1)

binding.pry

"something"