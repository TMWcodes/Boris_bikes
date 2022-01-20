require_relative 'bike'

class Dockingstation
    DEFAULT_CAPACITY = 50

    attr_reader :bikes, :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @bikes = []
        @capacity = DEFAULT_CAPACITY
        @capacity=capacity
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

    def broken?
        @broken
    end

    def report_broken
        @broken = true
    end

    private 

    def full?
        @bikes.count >= capacity
    end

    def empty?
        @bikes.empty?
    end

end