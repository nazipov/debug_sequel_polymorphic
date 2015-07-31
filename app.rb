ENV['RACK_ENV'] ||= "development"

require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

DB = Sequel.connect("mysql2://root@localhost/<restore from dump.sql>")

Sequel.extension(:inflector)
Sequel::Model.plugin(:polymorphic)

require_relative 'models/user'
require_relative 'models/status'
require_relative 'models/like'

# class Web < Sinatra::Base
#   get '/' do
#     "Hello world."
#   end
# end