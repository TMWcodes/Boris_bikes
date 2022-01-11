require 'docking_station'

describe Dockingstation do
    # it 'responds to release_bike' do
    #expect(Dockingstation).to respond_to :release_bike
    #end
    it { is_expected.to respond_to :release_bike }

    it 'provides working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
    it { is_expected.to respond_to(:dock).with(1).argument }
end

    
