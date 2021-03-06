require 'enju_seed'
require 'enju_biblio'
require 'enju_library'
require 'enju_manifestation_viewer'
require 'bootstrap-sass'
require 'slim-rails'

module EnjuLeaf
  class Engine < ::Rails::Engine
    initializer :assets do |config|
      Rails.application.config.assets.precompile += %w( mobile.js mobile.css print.css )
    end
  end
end
