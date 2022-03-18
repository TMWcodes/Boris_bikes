# Boris_bikes2

rspec --format documentation 

require './lib/bike'
 => true 
require './lib/docking_station'
 => true 
dockingstation = Dockingstation.new
 => #<Dockingstation:0x000000013f67f3f0 @bikes=[], @capacity=50> 
bike = Bike.new
 => #<Bike:0x000000011f262788> 
dockingstation.release_bike
/Users/tyrone/Boris_bikes2/lib/docking_station.rb:15:in `release_bike': No bikes available (RuntimeError)     
dockingstation.dock(bike)
 => [#<Bike:0x000000011f262788>] 
dockingstation.release_bike
 => #<Bike:0x000000011f262788> 
 bike.broken?
 => nil 
bike.report_broken
 => true 
bike.broken?
 => true 
 3.0.0 :020 > dockingstation.release_bike
 => #<Bike:0x000000011f262788 @broken=true> 