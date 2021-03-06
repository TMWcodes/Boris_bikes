require 'docking_station'

describe Dockingstation do
     it { is_expected.to respond_to :release_bike }

    describe '#release_bike' do
        it 'releases a bikes' do
            bikes = Bike.new
            subject.dock(bikes)
            expect(subject.release_bike).to eq bikes
        end
        
        it 'raises and error when there are no bikes' do
            expect{ subject.release_bike }.to raise_error 'No bikes available'
        end
    end

    it 'provides working bikes' do
        subject.dock(Bike.new)
        bikes = subject.release_bike
        expect(bikes).to be_working
    end

    
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bikes) }

    it 'docks bikes' do
        bikes = Bike.new
        expect(subject.dock(bikes)).to eq [bikes]
    end
    
    it 'returns docked bikes' do
        bikes = Bike.new
        subject.dock(bikes)
        expect(subject.bikes).to eq [bikes]
    end

    # describe '#dock' do
    #     it 'raises an error when full' do
    #         Dockingstation::DEFAULT_CAPACITY.times do
    #             subject.dock(Bike.new) end
    #         expect { subject.dock Bike.new }.to raise_error 'No more space at docking station'
    #     end
    # end
=begin
     describe '#dock' do
        it 'raises an error when full' do
            subject.capacity.times {subject.dock Bike.new}
            expect { subject.dock Bike.new }.to raise_error 'No more space at docking station'
        end
    end

        it 'has a default capacity' do
            expect(subject.capacity).to eq Dockingstation::DEFAULT_CAPACITY
        end

    describe 'initialization' do
        it 'has an variable capacity' do
            docking_station = Dockingstation.new(50)
            50.times {docking_station.dock Bike.new}
            expect { subject.dock Bike.new }.to raise_error 'no more space m8'
        end
    end
=end
    describe 'initialization' do
        subject { Dockingstation.new }
        let(:bike) { Bike.new }
        it 'defaults capacity' do
            described_class::DEFAULT_CAPACITY.times do
            subject.dock(bike)
            end
            expect { subject.dock(bike) }.to raise_error 'No more space at docking station'
        end
    end
end

        

