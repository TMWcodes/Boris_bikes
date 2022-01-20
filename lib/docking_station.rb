require_relative 'bike'

class Dockingstation
    attr_reader :bikes
    DEFAULT_CAPACITY = 20
    def initialize
        @bikes = []
    end

    def release_bike
        raise 'No bikes available' if empty?
        @bikes.pop
      # pop Removes the last element returns it
      # without pop it the bike boject was still in the array []

    end

    def dock(bike) 
       fail 'No more space at docking station' if full?
       @bikes << bike
    end

    private 

    def full?
        @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
        @bikes.empty?
    end
end