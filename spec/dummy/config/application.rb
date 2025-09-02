# Standard Rails application configuration for dummy app used in specs
require_relative 'boot'

# Ensure URI is initialized before any libraries that patch it (Ruby 3.4 + Rails 8 compatibility)
require 'uri'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Dummy
  class Application < ::Rails::Application
    config.cache_classes = true
    config.active_support.deprecation = :stderr
    config.eager_load = false
    config.action_controller.allow_forgery_protection = false

    # Raise exceptions instead of rendering exception templates
    config.action_dispatch.show_exceptions = false
    # because this belongs here for some reason...??? also in spec_helper
    # thanks rails 5 :/
    config.active_support.test_order = :random

    config.secret_token = config.secret_key_base = 
      'http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/5/25/8/anigif_enhanced-buzz-11857-1369483324-0.gif'
  end
end

Dummy::Application.initialize!
