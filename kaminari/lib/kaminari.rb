require "kaminari/config"
require "kaminari/helpers/action_view_extension"
require "kaminari/helpers/paginator"
require "kaminari/models/page_scope_methods"
require "kaminari/models/configuration_methods"

module Kaminari
  module Initializer
    def self.register(name)
      (@hooks ||= []) << name.intern
    end

    def self.init!
      @hooks.each {|hook| __send__ hook }
    end

    def self.init_array_ext
      require "kaminari/models/array_extension"
      require File.join(File.dirname(__FILE__), 'models/array_extension')
    end
    register :init_array_ext

    def self.init_action_view
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, Kaminari::ActionViewExtension
      end
    end
  end
end
