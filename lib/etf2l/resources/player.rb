module Etf2l
  class Player
    attr_reader :bans,
                :country,
                :classes,
                :id,
                :name,
                :title,
                :steam

    alias :nickname :name

    def initialize(attributes)
      @bans = []
      @country = attributes["country"]
      @classes = attributes["classes"]
      @id = attributes["id"]
      @name = attributes["name"]
      @title = attributes["title"]
      @steam = Steam.new(attributes["steam"])
    end

    def banned?
      bans.any?
    end
  end
end
