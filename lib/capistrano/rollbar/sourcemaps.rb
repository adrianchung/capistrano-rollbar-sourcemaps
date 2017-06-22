# Core tasks
load File.expand_path('../../tasks/sourcemaps.rake', __FILE__)

namespace :deploy do
  after 'post_deploy:compile_assets', 'rollbar:sourcemaps:upload'
end

namespace :load do
  task :defaults do
    load "capistrano/rollbar/sourcemaps/defaults.rb"
  end
end
