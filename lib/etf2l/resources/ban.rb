require "memoizable"

module Etf2l
  class Ban
    include Memoizable

    attr_reader :start, :end, :reason

    def initialize(attributes)
      @start = Time.at(attributes["start"])
      @end = Time.at(attributes["end"])
      @reason = attributes["reason"]
    end

    # Returns the duration of the ban in seconds.
    #
    # @return [Fixnum] duration of the ban in seconds.
    def duration
      (self.end - start).round
    end

    memoize :duration
  end
end
