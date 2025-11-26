# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class CreateEmployerRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute legal_name
      #
      #   @return [String]
      required :legal_name, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute active
      #
      #   @return [Boolean, nil]
      optional :active, VitablePartnerAPI::Internal::Type::Boolean

      # @!method initialize(legal_name:, name:, active: nil)
      #   @param legal_name [String]
      #   @param name [String]
      #   @param active [Boolean]
    end
  end
end
