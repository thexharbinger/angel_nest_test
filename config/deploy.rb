
set :application, "angel_nest_test"
set :scm, :git
set :repository,  "https://github.com/thexharbinger/angel_nest_test.git"
set :user, "angel"
set :deploy_to, "/home/angel/angel_nest_test"
role :web, "ec2-13-59-106-247.us-east-2.compute.amazonaws.com"                         
role :app, "ec2-13-59-106-247.us-east-2.compute.amazonaws.com"
role :db,  "ec2-13-59-106-247.us-east-2.compute.amazonaws.com", :primary => true

set :scm_command, "/usr/bin/git"
set :local_scm_command, :default
set :use_sudo, false


ssh_options[:forward_agent] = true
default_run_options[:pty] = true