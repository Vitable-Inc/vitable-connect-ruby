# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employers
      # @see VitableConnectAPI::Resources::Employers::Employees#create
      class EmployeeCreateResponse < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute data
        #   Serializer for Employee entity in public API responses.
        #
        #   Note: Employee is in the company module but exposed via account public API.
        #   Contains nested MemberEntity with personal identity information.
        #
        #   @return [VitableConnectAPI::Models::Employee]
        required :data, -> { VitableConnectAPI::Employee }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Employers::EmployeeCreateResponse} for more details.
        #
        #   Response containing a single employee resource.
        #
        #   @param data [VitableConnectAPI::Models::Employee] Serializer for Employee entity in public API responses.
      end
    end
  end
end
