require_relative 'bike'

class Dockingstation
    attr_reader :bike

    def release_bike
        raise 'No bikes available' unless @bike
        @bike
    end

    def dock(bike) 
       fail 'No more space at docking station' if @bike 
       @bike = bike
    end
end

