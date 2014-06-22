require "memoizable"

module Etf2l

  # Player of the ETF2L.
  class Player

    include Memoizable

    # @!attribute [r] bans
    #   @return [Array<Ban>] An array of bans currently affecting the player.
    # @!attribute [r] country
    #   @return [String] nationality of the player.
    attr_reader :bans,
                :country,
                :classes,
                :id,
                :name,
                :title,
                :steam

    alias :nickname :name
    alias :nationality :country

    def initialize(attributes)
      @bans = []
      @country = attributes["country"]
      @classes = attributes["classes"]
      @id = attributes["id"]
      @name = attributes["name"]
      @title = attributes["title"]
      @steam = Steam.new(attributes["steam"])

      if attributes["bans"]
        attributes["bans"].each { |ban| @bans << Ban.new(ban) }
      end
    end

    # Returns true if the player is currently banned.
    # @return [Boolean] true the player is currently banned.
    def banned?
      bans.any?
    end

    memoize :banned?
  end
end
