require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Actionmailer
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
	config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'mail.google.com',
  user_name:            'hoangtrieukd@gmail.com',
  password:             'DangSonTung1',
  authentication:       'login',
  enable_starttls_auto: true  }
  end
end
