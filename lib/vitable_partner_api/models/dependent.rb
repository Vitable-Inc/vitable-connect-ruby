# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Dependents#update
    class Dependent < VitablePartnerAPI::Models::Member
      # @!attribute relationship
      #
      #   @return [Symbol, VitablePartnerAPI::Models::Dependent::Relationship]
      required :relationship, enum: -> { VitablePartnerAPI::Dependent::Relationship }

      # @!method initialize(relationship:)
      #   @param relationship [Symbol, VitablePartnerAPI::Models::Dependent::Relationship]

      module Relationship
        extend VitablePartnerAPI::Internal::Type::Enum

        SPOUSE = :SPOUSE
        CHILD = :CHILD

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
