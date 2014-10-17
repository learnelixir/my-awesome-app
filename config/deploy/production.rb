server "xx.xx.xx.xx", :app, :web, :db, :primary => true
set :user, '<user>'
set :branch, :master
set :mix_env, :prod
set :deploy_to, "/home/<user>/www/my_awesome_app"
