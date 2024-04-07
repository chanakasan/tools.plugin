#!/usr/bin/env ruby

require 'securerandom'

class RandomNumber
  class << self
    def generate
      token(9999)
    end

    def random_seed
      SecureRandom.random_number(4096)
    end

    def token(range)
      SecureRandom.random_number(range) if range > 0
    end
  end
end
