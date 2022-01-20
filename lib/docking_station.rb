require_relative 'bike'

class Dockingstation
    attr_reader :bikes

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
        @bikes.count >= 20
    end

    def empty?
        @bikes.empty?
    end
end
