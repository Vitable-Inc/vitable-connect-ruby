# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employers#create
    class Employer < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute active
      #
      #   @return [Boolean]
      required :active, VitablePartnerAPI::Internal::Type::Boolean

      # @!attribute legal_name
      #
      #   @return [String]
      required :legal_name, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute eligibility_policy
      #
      #   @return [VitablePartnerAPI::Models::EligibilityPolicy, nil]
      optional :eligibility_policy, -> { VitablePartnerAPI::EligibilityPolicy }, nil?: true

      # @!attribute organization_id
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!method initialize(id:, active:, legal_name:, name:, eligibility_policy: nil, organization_id: nil)
      #   @param id [String]
      #   @param active [Boolean]
      #   @param legal_name [String]
      #   @param name [String]
      #   @param eligibility_policy [VitablePartnerAPI::Models::EligibilityPolicy, nil]
      #   @param organization_id [String, nil]
    end
  end
end
