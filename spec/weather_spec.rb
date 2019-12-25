require 'weather'

describe Weather do

  describe '#stormy?' do

    let(:weather) { described_class.new }
    
    it 'returns false if sunny' do
      expect(weather.stormy?).to eq(false)
    end

  end

end
