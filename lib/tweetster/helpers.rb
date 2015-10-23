module Tweetster
  def self.encode term:
    URI.encode "\"#{term}\""
  end
end
