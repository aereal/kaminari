require 'rails'

module Kaminari
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'kaminari' do |app|
      Kaminari::Initializer.init!
    end
  end
end
