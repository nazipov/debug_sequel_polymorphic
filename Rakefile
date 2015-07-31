require_relative 'app'

namespace :api do
  desc 'API routes'
  task :routes do
    API::Base.routes.each do |api|
      if api.route_version
        method = api.route_method.ljust(10)
        path = api.route_path.gsub(":version", api.route_version)
        puts "     #{method} #{path}"
      else
        method = api.route_method.ljust(10)
        puts "     #{method} #{api.route_path}"
      end
    end
  end
end

# mysql -uroot -e "CREATE DATABASE tatarile_test CHARACTER SET utf8 COLLATE utf8_general_ci;"
# mysqldump -uroot -d legacy_tatarile_main | mysql -uroot -Dtatarile_test