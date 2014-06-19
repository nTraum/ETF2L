module Etf2l
  class Steam
    attr_reader :avatar, :id, :id64

    def initialize(attributes)
      @avatar = attributes["avatar"]
      @id = attributes["id"]
      @id64 = attributes["id64"].to_i
    end
  end
end
