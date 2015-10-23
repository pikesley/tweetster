module Tweetster
  describe 'Helpers' do
    it 'URL-encodes a search term' do
      expect(Tweetster.encode term: 'hoard of').to eq '%22hoard%20of%22'
    end
  end
end
