app_path = '/home/counters/site_services'

worker_processes 2
working_directory "#{app_path}/current"

timeout 30

# Drop the UNIX socket within the nginx chroot
listen '/var/www/run/counters_unicorn.sock', :backlog => 64

pid '/var/run/unicorn/counters_unicorn.pid'

stderr_path '/var/log/unicorn/site_services_error.log'
stdout_path '/var/log/unicorn/site_services.log'

logger Logger.new($stdout)

# use correct Gemfile on restarts
before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = "#{app_path}/current/Gemfile"
end
