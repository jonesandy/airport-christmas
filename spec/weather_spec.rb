require 'weather'

describe Weather do

  describe '#stormy?' do

    let(:weather) { described_class.new }
    
    it 'returns false if sunny' do
      srand(4)
      
      expect(weather.stormy?).to eq(false)
    end

    it 'returns true if stormy' do    
      srand(5)

      expect(weather.stormy?).to eq(true)
    end

  end

end
