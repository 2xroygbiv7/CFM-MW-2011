require 'forcedotcom'

# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
# OmniAuth.config.full_host = 'https://localhost:3000'
OmniAuth.config.full_host = MY_OMNIAUTH_HOST

module OmniAuth
  module Strategies
    #tell omniauth to load our strategy
    autoload :Forcedotcom, 'lib/forcedotcom'
  end
end

# created a new remote access for heroku
Rails.application.config.middleware.use OmniAuth::Builder do
  # Telesales App - Heroku
  provider :forcedotcom, MY_CONSUMER_KEY, MY_CONSUMER_SECRET
end
