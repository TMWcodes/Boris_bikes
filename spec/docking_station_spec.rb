require 'docking_station'

describe Dockingstation do
    # it 'responds to release_bike' do
    #expect(Dockingstation).to respond_to :release_bike
    #end
    it {is_expected.to respond_to :release_bike}
end