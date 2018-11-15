# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# Cap3 Unicorn gem
require 'capistrano3/unicorn'

# Bundler support
require 'capistrano/bundler'

# Bring in migration support from cap-rails
require 'capistrano/rails/migrations'

# Using Git
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

# Going to use RVM on the server
require 'capistrano/rvm'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
