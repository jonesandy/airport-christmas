require 'plane'

describe Plane do

  subject(:plane) { described_class.new }

  it 'starts off flying' do
    expect(plane).to be_flying
  end

  describe '#landed' do
    
    it 'returns true' do
      plane.send(:landed)

      expect(plane).not_to be_flying
    end

  end

  describe '#take_off' do
    
    it 'returns false' do
      plane.send(:take_off)

      expect(plane).to be_flying
    end

  end

end
