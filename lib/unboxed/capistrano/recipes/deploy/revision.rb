Unboxed::Capistrano::Recipes::Configuration.load do
  after "deploy",            "deploy:revision"
  after "deploy:migrations", "deploy:revision"

  namespace :deploy do
    desc "Show currently deployed revision"
    task :revision, :roles => :app do
      message = 'Currently deployed revision'
      message << " on #{stage}" unless stage.nil?
      puts "#{message}:"
      puts current_revision
    end
  end

end
