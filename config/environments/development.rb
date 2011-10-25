OmniauthDemo::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
  
# Unique application setting for dev env
  MY_OMNIAUTH_HOST = 'https://localhost:3000'
  MY_CONSUMER_KEY = '3MVG9Y6d_Btp4xp6170p5ea7dq87rdfENsGREBzFpqk03OFsS7HM8gsp3x5sY0oivAmfk0LY8Agt556a8Qyvj'
  MY_CONSUMER_SECRET ='2482914786969902647'

end

