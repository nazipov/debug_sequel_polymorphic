require_relative 'app'

run Rack::Cascade.new [Web, API::Base]