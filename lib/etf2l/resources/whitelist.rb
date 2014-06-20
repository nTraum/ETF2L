module Etf2l
  class Whitelist
    attr_reader :filename, :last_change, :url

    def initialize(attributes)
      @filename = attributes["filename"]
      @last_change = Time.at(attributes["last_change"])
      @url = attributes["url"]
    end
  end
end
