# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employees
      # @see VitablePartnerAPI::Resources::Employees::Dependents#list
      class DependentListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitablePartnerAPI::Models::Dependent>, nil]
        optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Dependent] }

        # @!method initialize(data: nil)
        #   @param data [Array<VitablePartnerAPI::Models::Dependent>]
      end
    end
  end
end
