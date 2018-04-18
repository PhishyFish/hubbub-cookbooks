default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:hubbub][:git_repository] = "https://github.com/PhishyFish/hubbub/"
default[:hubbub][:git_revision] = "master"
default[:hubbub][:path] = "/opt/hubbub"

default[:hubbub][:rails_env] = "production"
default[:hubbub][:log_to_stdout] = "true"

default[:hubbub][:environment] = {
  "SECRET_KEY_BASE": node[:hubbub][:secret_key_base],
  "DATABASE_URL": node[:hubbub][:database_url],
  "RAILS_ENV": node[:hubbub][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:hubbub][:log_to_stdout],
  "pusher_app_id": node[:hubbub][:pusher_app_id],
	"pusher_cluster": node[:hubbub][:pusher_cluster],
	"pusher_key": node[:hubbub][:pusher_key],
	"pusher_secret": node[:hubbub][:pusher_secret],
  "TZ": node[:hubbub][:tz]
}

default[:hubbub][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
