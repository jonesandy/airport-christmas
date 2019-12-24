require 'airport'

describe Airport do

  subject(:heathrow) { described_class.new }
  let(:plane) { double :plane, :landed => false}

  context 'nice weather' do

    describe '#land' do

      it 'should land a plane' do
        expect(heathrow.land(plane)).to eq([plane])
      end

      it 'should call #landed on plane' do
        jet = spy('Plane')
        heathrow.land(jet)

        expect(jet).to have_received(:landed)
      end

      it 'raises error when full' do
      
        plane = double("Plane", :landed => false)
  
        Airport::DEFAULT_CAPACITY.times { heathrow.land(plane) }
        expect { heathrow.land(plane) }.to raise_error "Can't land aiport full!"
      end

    end

    describe '#take_off' do

      it 'should take off a plane' do
        plane2 = double(:plane, :landed => false, :take_off => true )

        heathrow.land(plane)
        heathrow.land(plane2)

        expect(heathrow.take_off(plane2)).to eq(plane2)
      end

      it 'should call # on plane' do
        jet = spy('Plane')
        heathrow.land(jet)
        heathrow.take_off(jet)

        expect(jet).to have_received(:take_off)
      end

    end

  end

end
