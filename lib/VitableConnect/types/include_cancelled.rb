# frozen_string_literal: true

module VitableConnect
  module Types
    module IncludeCancelled
      # IncludeCancelled is an alias for Boolean

      # @option str [String]
      #
      # @return [untyped]
      def self.load(str)
        ::JSON.parse(str)
      end

      # @option value [untyped]
      #
      # @return [String]
      def self.dump(value)
        ::JSON.generate(value)
      end
    end
  end
end
