set :application, "NocNoc"
set :repository,  "git://github.com/dougbarth/NocNoc.git"
set (:deploy_to) {"/Users/jjudge/Sites/#{application}"}
set :user, 'jjudge'

set :scm, :git

role :web, "boc.local"
role :app, "boc.local"                          # This may be the same as your `Web` server
role :db,  "boc.local", :primary => true # This is where Rails migrations will run

default_environment["PATH"] = "/usr/local/bin:/bin:/usr/bin"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :symlink_db do
    run "ln -nfs #{shared_path}/production.sqlite3 #{release_path}/db/production.sqlite3"
  end
end

after 'deploy:symlink', 'deploy:symlink_db'
