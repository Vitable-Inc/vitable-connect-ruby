# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employees
      # @see VitablePartnerAPI::Resources::Employees::QualifyingLifeEvents#list
      class QualifyingLifeEventListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitablePartnerAPI::Models::QualifyingLifeEvent>, nil]
        optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::QualifyingLifeEvent] }

        # @!method initialize(data: nil)
        #   @param data [Array<VitablePartnerAPI::Models::QualifyingLifeEvent>]
      end
    end
  end
end
