require 'roda'
require_relative '../lib/rio_dos_sinos'

module RioDosSinos
  class Web < Roda
    plugin :json

    route do |r|
      # GET /ping
      r.get 'ping' do
        { status: 'OK', date: Time.now.utc.iso8601 }
      end

      # GET /
      r.root do
       r.redirect '/ping'
      end
    end
  end
end
