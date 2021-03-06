require 'airport'

describe Airport do

  subject(:heathrow) { described_class.new }
  let(:plane) { double :plane, :landed => false , :take_off => true}

  context 'nice weather' do

    before(:each) do
      allow(heathrow).to receive(:stormy?) { false }
    end

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
        expect { heathrow.land(plane) }.to raise_error "Can't land airport full!"
      end

    end

    describe '#take_off' do

      it 'should take off a plane' do
        
        plane2 = double(:plane, :landed => false, :take_off => true)

        heathrow.land(plane)
        heathrow.land(plane2)

        expect(heathrow.take_off(plane2)).to eq(plane2)
      end

      it 'should not take off a plane when not in airport' do
        heathrow.land(plane)
        heathrow.take_off(plane)

        expect { heathrow.take_off(plane) }.to raise_error "Plane is not in the airport!"
      end

      it 'should call #take_off on plane' do
        jet = spy('Plane')
        heathrow.land(jet)
        heathrow.take_off(jet)

        expect(jet).to have_received(:take_off)
      end

    end

  end

  context 'stormy weather' do

    it 'should raise error on landing' do
      allow(heathrow).to receive(:stormy?) { true }
      text = "Can't land weather is stormy!"

      expect { heathrow.land(plane) }.to raise_error(text)
    end

    it 'should raise error on take off' do
      allow(heathrow).to receive(:stormy?) { false }
      heathrow.land(plane)
      text = "Can't take off weather is stormy!"
      allow(heathrow).to receive(:stormy?) { true }

      expect { heathrow.take_off(plane) }.to raise_error(text)
    end

  end

end
