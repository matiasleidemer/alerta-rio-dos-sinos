module RioDosSinos
  module Ping
    def self.call
      { message: 'pong', time: Time.now.utc.iso8601, env: ENV['RACK_ENV'] }
    end
  end
end
