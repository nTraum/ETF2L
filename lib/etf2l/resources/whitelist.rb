module Etf2l

  # ETF2L whitelist.
  class Whitelist

    # @!attribute [r] name
    #   @return [String] name of the whitelist.
    # @!attribute [r] filename
    #   @return [String] local file name when used on a game server.
    # @!attribute [r] last_change
    #   @return [Time] timestamp of the last modification date.
    # @!attribute [r] url
    #   @return [String] URL to the whitelist file.
    attr_reader :name, :filename, :last_change, :url

    def initialize(attributes)
      @name = attributes["name"]
      @filename = attributes["filename"]
      @last_change = Time.at(attributes["last_change"])
      @url = attributes["url"]
    end
  end
end
