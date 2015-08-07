source 'https://rubygems.org'
ruby '2.2.2'

gem "sinatra"
gem "sinatra-contrib", require: false
gem "grape"
gem "grape-swagger"
gem "oj"
gem "mysql2"
gem "sequel"
gem "sequel_polymorphic", git: 'https://github.com/jackdempsey/sequel_polymorphic.git', branch: 'master'

group :development do
  gem "mina"
  gem "grape-reload"
end

group :test do
  gem "factory_girl"
  gem "rspec", "~> 3.2"
  gem "rspec_sequel_matchers"
  gem "rack-test"
end

group :production do
  gem "thin"
end