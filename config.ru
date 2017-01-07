require 'logger'
require './web/web'

logger = Logger.new("| tee log/#{ENV.fetch('RACK_ENV', 'development')}.log")

use Rack::CommonLogger, logger

run RioDosSinos::Web
