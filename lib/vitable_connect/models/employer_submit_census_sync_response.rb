# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#submit_census_sync
    class EmployerSubmitCensusSyncResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single census sync detail resource.
      #
      #   @param data [VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data]

      # @see VitableConnect::Models::EmployerSubmitCensusSyncResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute accepted_at
        #
        #   @return [Time]
        required :accepted_at, Time

        # @!attribute employer_id
        #
        #   @return [String]
        required :employer_id, String

        # @!method initialize(accepted_at:, employer_id:)
        #   @param accepted_at [Time]
        #   @param employer_id [String]
      end
    end
  end
end
