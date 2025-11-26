# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class UpdateEmployerRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute active
      #
      #   @return [Boolean, nil]
      optional :active, VitablePartnerAPI::Internal::Type::Boolean

      # @!attribute legal_name
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(active: nil, legal_name: nil, name: nil)
      #   @param active [Boolean]
      #   @param legal_name [String]
      #   @param name [String]
    end
  end
end
