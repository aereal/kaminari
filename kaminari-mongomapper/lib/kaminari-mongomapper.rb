require "kaminari"

module Kaminari
  module Initializer
    def self.init_mongo_mapper
      require "mongo_mapper"${2}
      ActiveSupport.on_load(:mongo_mapper) do
        require 'kaminari/models/mongo_mapper_extension'
        MongoMapper::Document.send :include, Kaminari::MongoMapperExtension::Document
        Plucky::Query.send :include, Kaminari::PluckyCriteriaMethods
        Plucky::Query.send :include, Kaminari::PageScopeMethods
      end
    end
    register :init_mongo_mapper
  end
end
