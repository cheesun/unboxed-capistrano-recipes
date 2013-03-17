Unboxed::Capistrano::Recipes::Configuration.load do
  namespace :deploy do
    desc "Start the application via Passenger (has no effect)"
    task :start do ; end
    desc "Stop the application via Passenger (has no effect)"
    task :stop do ; end
    desc "Restart the Passenger application server"
    task :restart, :roles => :app, :except => { :no_release => true } do
      run "touch #{File.join(current_path, 'tmp' ,'restart.txt')}"
    end
  end
end

