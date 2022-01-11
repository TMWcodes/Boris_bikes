require_relative 'bike'

class Dockingstation
    attr_reader :bikes
    def initialize
        @bikes = []

    def release_bike
        raise 'No bikes available' if @bikes.empty?
        @bikes.pop
    end

    def dock(bike) 
       fail 'No more space at docking station' if @bikes.count >= 20
       @bikes << bike
    end
    end
end
