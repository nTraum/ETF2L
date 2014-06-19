require "httparty"

module Etf2l
  class API
    include HTTParty
    base_uri "http://api-v1.etf2l.org"
    headers "accept" => "application/json"
    format :json

    def self.player(identifier)
      response = get("/player/#{identifier}")
      Player.new(response["player"])
    end
  end
end
