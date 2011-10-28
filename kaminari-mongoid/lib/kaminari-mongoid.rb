require "kaminari"

module Kaminari
  module Initializer
    def self.init_mongoid
      require "mongoid"
      require 'kaminari/models/mongoid_extension'
      Mongoid::Document.send :include, Kaminari::MongoidExtension::Document
      Mongoid::Criteria.send :include, Kaminari::MongoidExtension::Criteria
    end
    register :init_mongoid
  end
end
