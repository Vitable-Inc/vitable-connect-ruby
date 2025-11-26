# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Enrollments#get_eligible_plans
    class EnrollmentGetEligiblePlansResponse < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitablePartnerAPI::Models::Plan>, nil]
      optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Plan] }

      # @!method initialize(data: nil)
      #   @param data [Array<VitablePartnerAPI::Models::Plan>]
    end
  end
end
