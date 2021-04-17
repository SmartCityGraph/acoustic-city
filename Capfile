
require "capistrano/setup"

require 'capistrano/deploy'
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rake'
require 'capistrano3/postgres'
require "capistrano/scm/git"
require 'capistrano/sidekiq'
#require 'capistrano/sidekiq/monit'
require 'capistrano/puma'

install_plugin Capistrano::Puma, load_hooks: false
install_plugin Capistrano::Puma::Monit, load_hooks: false
install_plugin Capistrano::Puma::Nginx
install_plugin Capistrano::SCM::Git

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
before 'deploy:starting', 'deploy:auto_skip_assets'