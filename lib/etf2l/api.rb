require "httparty"

module Etf2l
  class API
    include HTTParty
    base_uri "http://api-v1.etf2l.org"
    headers "accept" => "application/json"
    format :json

    # Returns the requested player.
    # @param identifier [Fixnum, String] ETF2L ID, SteamID or SteamID64 of
    #   the player.
    #
    # @return [Player] The requested player.
    # @example by ETF2L ID
    #    API.player(10512)
    # @example by SteamID
    #    API.player("STEAM_0:0:18721806")
    # @example by SteamID64
    #    API.player(76561197997709340)
    def self.player(identifier)
      response = get("/player/#{identifier}")
      Player.new(response["player"])
    end


    # Returns an array of (currently used) whitelists.
    #
    # @return [Array<Whitelist>] an array of (currently used) whitelists.
    def self.whitelists
      response = get("/whitelists")
      response["whitelists"].map do |name, attributes|
        Whitelist.new(attributes.merge("name" => name))
      end
    end
  end
end
