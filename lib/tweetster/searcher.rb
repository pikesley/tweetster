module Tweetster
  class Searcher
    def self.results term, count: 10, since: nil
      results = Client.instance.client.search(Tweetster.encode(term: term), result_type: 'recent').take(count)
      if since
    #    require 'pry'
    #    binding.pry
        results.select! { |r| r.id > since }
      end
      results
    end
  end
end
