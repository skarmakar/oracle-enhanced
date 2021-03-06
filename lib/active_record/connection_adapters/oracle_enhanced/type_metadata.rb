# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters #:nodoc:
    module OracleEnhanced
      class TypeMetadata < DelegateClass(ActiveRecord::ConnectionAdapters::SqlTypeMetadata) # :nodoc:
        attr_reader :virtual

        def initialize(type_metadata, virtual: nil)
          super(type_metadata)
          @type_metadata = type_metadata
          @virtual = virtual
        end
      end
    end
  end
end
