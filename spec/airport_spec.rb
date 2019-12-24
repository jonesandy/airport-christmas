require 'airport'

describe Airport do

  subject(:heathrow) { described_class.new }
  let(:plane) { double :plane, :landed => false }

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

    end

  end

end
