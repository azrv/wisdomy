require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Wisdomy
  class Application < Rails::Application
    config.load_defaults 5.2

    config.eager_load_paths << Rails.root.join('lib')
  end
end
