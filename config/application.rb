require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module YulFines
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.generators.stylesheets = false
    config.generators.javascripts = false
    config.generators.helper = false
    config.generators.test_framework :test_unit, fixture: false
    config.generators.factory_bot = true

    # Using sucker punch to proccess logs and emails later
    config.active_job.queue_adapter = :sucker_punch

    # SET TImezone
    config.time_zone = 'Eastern Time (US & Canada)'
  end
end
