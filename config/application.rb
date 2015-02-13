require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlogRubyJedi
  class Application < Rails::Application
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'Brasilia'
    config.i18n.enforce_available_locales = false

    config.generators do |g|
      g.test_framework :rspec
      g.view_specs false
      g.helper_specs false

      # do not generate assets nor helpers
      g.assets false
      g.helper false
    end

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
