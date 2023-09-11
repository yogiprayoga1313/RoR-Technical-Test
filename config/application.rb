require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RoRTechnical
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # config.active_record.default_per_page = 3 # Ubah sesuai kebutuhan

    require 'will_paginate'
    require 'will_paginate/view_helpers/action_view'

    require 'kaminari'


    # config.after_initialize do
    #   # Buat file JSON awal jika tidak ada
    #   unless File.exist?("public/products.json")
    #     File.write("public/products.json", "[]")
    #   end

    config.generators do |g|
      g.test_framework :minitest, spec: true
    end
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
