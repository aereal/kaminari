require "kaminari"

module Kaminari
  module Initializer
    def self.init_active_record
      require "activerecord"
      ActiveSupport.on_load(:active_record) do
        require "kaminari/models/active_record_extension"
        ActiveRecord::Base.send :include, Kaminari::ActiveRecordExtension
      end
    end
    register :init_active_record
  end
end
