# config valid for current version and patch releases of Capistrano
#lock "~> 3.11.0"

set :application, "acoustic_city"
set :repo_url, "git@github.com:SmartCityGraph/acoustic-city.git"
set :pty,  false
set :conditionally_migrate,         true

set :deploy_to, "/var/www/apps/#{fetch(:application)}"
set :use_sudo, false
set :rvm_type, :user

#set :postgres_keep_local_dumps

set :user, 'deployer'

append :linked_files, '.env'
set :linked_dirs,                   %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle }
set :bundle_path,                   -> { shared_path.join('vendor/bundle') }
set :rvm_ruby_version,              "2.6.4"

set :puma_init_active_record,       true
#before 'deploy:starting', 'postgres:backup:create'

#before 'deploy:starting', 'postgres:backup:create'
#before 'deploy:starting', 'postgres:backup:download'
#after 'setup', 'puma:config'
#after 'setup', 'puma:nginx_config'
#
after 'deploy', 'puma:restart'
