# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host                  = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
config.action_mailer.raise_delivery_errors = false

config.gem "rubaidh-google_analytics",
  :lib     => "rubaidh/google_analytics",
  :version => "1.1.4",
  :source  => "http://gems.github.com"
config.gem 'sendgrid',
  :version => '0.1.4'

# set constants containing sensitive information
# such as passwords for sendgrid, etc.
extra_conf = "/data/extra-conf/environment-variables.rb"
if File.exists?(extra_conf)
  require extra_conf
end

HOST = ENV['STAGING_ALLOURIDEAS_HOST']
API_HOST = ENV['STAGING_API_HOST']
PAIRWISE_USERNAME = ENV['PAIRWISE_USERNAME']
PAIRWISE_PASSWORD = ENV['PAIRWISE_PASSWORD']

PHOTOCRACY_USERNAME = ENV['PHOTOCRACY_USERNAME']
PHOTOCRACY_PASSWORD = ENV['PHOTOCRACY_PASSWORD']

PHOTOCRACY_HOST = 'photocracy.org'

IP_ADDR_HASH_SALT = ENV['IP_ADDR_HASH_SALT'] #prevent dictionary attacks on stored ip address hashes
