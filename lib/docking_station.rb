#require_relative 'bike'

class Dockingstation
    def release_bike
        Bike.new
    end

    def dock(bike) 
        @bike = bike
    end

    def bike
        @bike
    end
end

