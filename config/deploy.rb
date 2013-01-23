set :rvm_ruby_string, 'ruby-1.9.3-p374'
#set :bundle_flags,    "--deployment --quiet --binstubs"
require "rvm/capistrano"
require "bundler/capistrano"

set :application, "zed"

# simple upload -- no scm involved
set :repository, 
set :user, "deploy"

role :web, "50.56.82.31"                          # Your HTTP server, Apache/etc
role :app, "50.56.82.31"                          # This may be the same as your `Web` server
role :db,  "50.56.82.31", :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end