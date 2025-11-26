# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employees
      # @see VitablePartnerAPI::Resources::Employees::Enrollments#list
      class EnrollmentListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitablePartnerAPI::Models::Enrollment>, nil]
        optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Enrollment] }

        # @!method initialize(data: nil)
        #   @param data [Array<VitablePartnerAPI::Models::Enrollment>]
      end
    end
  end
end
