require 'roda'
require_relative '../lib/rio_dos_sinos'

module RioDosSinos
  class Web < Roda
    plugin :json

    route do |r|
      # GET /
      r.root do
       r.redirect '/ping'
      end

      # GET /ping
      r.get 'ping' do
        RioDosSinos::Ping.call
      end
    end
  end
end
