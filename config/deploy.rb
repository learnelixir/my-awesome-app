require 'capistrano/ext/multistage'

set :stages, ["staging", "production"]
set :default_stage, "production"

set :keep_releases, 5 
set :application, "My Awesome App"
set :repository,  "git@github.com:learnelixir/my-awesome-app.git"
set :scm, :git
set :branch, :master 
set :use_sudo, false
set :normalize_asset_timestamps, false

set :deploy_via, :remote_cache
after "deploy:update", "deploy:cleanup"

after "deploy:update", "deploy:build", "deploy:cleanup"

namespace :assets do
  task :precompile, roles: :web do
    # do nothing
  end
end

def is_application_running?(current_path)
  pid = capture(%Q{ps ax -o pid= -o command=|
                grep "/home/app/www/my_awesome_app/current/rel/my_awesome_app/.*/[b]eam"|awk '{print $1}'})
  return pid != ""
end

namespace :deploy do
  task :is_running, roles: :web do
    is_running = is_application_running?(current_path)
    if is_running
      puts "Application is running"
    else
      puts "Application is NOT running"
    end
  end

  task :build, roles: :web do
    run "cd #{current_path} && yes | mix deps.get && yes | mix deps.compile"
    run "cd #{current_path} && MIX_ENV=#{mix_env} mix release"
  end 

  task :restart, roles: :web do
    if is_application_running?(current_path)
      run "cd #{current_path}/rel/my_awesome_app/bin && ./my_awesome_app stop" 
    end 

    run "cd #{current_path}/rel/my_awesome_app/bin && ./my_awesome_app start"
  end

  task :start, roles: :web do
    run "cd #{current_path}/rel/my_awesome_app/bin && ./my_awesome_app start"
  end

  task :stop, roles: :web do
    run "cd #{current_path}/rel/my_awesome_app/bin && ./my_awesome_app stop"
  end
end
