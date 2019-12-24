require 'plane'

describe Plane do

  subject(:plane) { described_class.new }

  it 'starts off flying' do
    expect(plane).to be_flying
  end

  describe '#landed' do
    
    it 'returns true' do
      expect(plane.landed).to eq(false)
    end

  end

end
