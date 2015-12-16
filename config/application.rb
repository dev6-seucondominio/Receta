require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Receta
  class Application < Rails::Application
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff|woff2)$)

    config.active_record.raise_in_transactional_callbacks = true
  end
end
