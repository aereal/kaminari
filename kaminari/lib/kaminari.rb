require "kaminari/config"
require "kaminari/helpers/action_view_extension"
require "kaminari/helpers/paginator"
require "kaminari/models/array_extension"

module Kaminari
  module Initializer
    def self.register(name)
      (@hooks ||= []) << name.intern
    end

    def self.init!
      @hooks.each {|hook| __send__ hook }
    end
  end
end
