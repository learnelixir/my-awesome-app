server "103.244.9.22", :app, :web, :db, :primary => true
set :user, 'app'
set :branch, :master
set :mix_env, :prod
set :deploy_to, "/home/app/www/my_awesome_app"

set :default_environment, {
  'PATH' => "$PATH:/home/app/src/elixir/bin"
}
