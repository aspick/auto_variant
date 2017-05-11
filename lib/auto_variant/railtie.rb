require 'auto_variant/action_controller/base'
require "rack/user_agent"

module AutoVariant
  class Railtie < ::Rails::Railtie
    initializer 'Initialize auto_variant' do
      ::ActionController::Base.send :include, AutoVariant::ActionController::Base
      ::ActionController::Base.send :before_action, :set_variant
    end
  end
end
