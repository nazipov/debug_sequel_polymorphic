ENV['RACK_ENV'] ||= "development"

require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

DB = Sequel.connect("")

Sequel.extension(:inflector)
Sequel::Model.plugin(:polymorphic)

require_relative 'models/camel_case'
require_relative 'models/user'
require_relative 'models/status'
require_relative 'models/like'
