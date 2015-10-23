module Tweetster
  describe Searcher do
    it 'returns something', :vcr do
      expect(described_class.results 'hoard of').to be_an Array
    end

    it 'returns tweets', :vcr do
      expect(described_class.results('hoard of').first).to be_a Twitter::Tweet
    end

    it 'returns kosher tweets', :vcr do
      expect(described_class.results('hoard of').first.text).to match /hoard of/i
    end

    it 'returns n results', :vcr do
      expect(described_class.results('hoard of', count: 15).count).to eq 15
    end

    it 'returns results greater than some id', :vcr do
      expect(described_class.results('hoard of', since: 657563176268091392).count).to eq 5
    end
  end
end
