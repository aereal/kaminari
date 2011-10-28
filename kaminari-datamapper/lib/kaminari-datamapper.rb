require "kaminari"

module Kaminari
  module Initializer
    def self.init_data_mapper
      require "dm-core"
      require "dm-aggregates"
      require 'kaminari/models/data_mapper_extension'
      DataMapper::Collection.send :include, Kaminari::DataMapperExtension::Collection
      DataMapper::Model.append_extensions Kaminari::DataMapperExtension::Model
#     ::DataMapper::Model.send :extend, Kaminari::DataMapperExtension::Model
    end
    register :init_data_mapper
  end
end
