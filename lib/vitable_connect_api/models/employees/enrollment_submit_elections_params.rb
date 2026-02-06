# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employees
      # @see VitableConnectAPI::Resources::Employees::Enrollments#submit_elections
      class EnrollmentSubmitElectionsParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute elections
        #   List of enrollment elections
        #
        #   @return [Array<VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election>]
        required :elections,
                 -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election] }

        # @!method initialize(elections:, request_options: {})
        #   @param elections [Array<VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election>] List of enrollment elections
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]

        class Election < VitableConnectAPI::Internal::Type::BaseModel
          # @!attribute coverage_tier
          #   - `Unspecified` - Unspecified
          #   - `EE` - Ee
          #   - `ES` - Es
          #   - `EC` - Ec
          #   - `EF` - Ef
          #
          #   @return [Symbol, VitableConnectAPI::Models::CoverageTier]
          required :coverage_tier, enum: -> { VitableConnectAPI::CoverageTier }

          # @!attribute decision
          #   - `Enrolled` - Enrolled
          #   - `Waived` - Waived
          #
          #   @return [Symbol, VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election::Decision]
          required :decision,
                   enum: -> { VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::Decision }

          # @!attribute enrollment_id
          #   ID of the enrollment (enrl\_\*)
          #
          #   @return [String]
          required :enrollment_id, String

          # @!attribute dependent_ids
          #   List of dependent IDs to include in coverage (dpnd\_\*)
          #
          #   @return [Array<String>, nil]
          optional :dependent_ids, VitableConnectAPI::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute selected_plan_id
          #   ID of the selected plan (plan\_\*). Required if decision is 'Enrolled'
          #
          #   @return [String, nil]
          optional :selected_plan_id, String, nil?: true

          # @!method initialize(coverage_tier:, decision:, enrollment_id:, dependent_ids: nil, selected_plan_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election}
          #   for more details.
          #
          #   Individual enrollment election within the batch request.
          #
          #   @param coverage_tier [Symbol, VitableConnectAPI::Models::CoverageTier] - `Unspecified` - Unspecified
          #
          #   @param decision [Symbol, VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election::Decision] - `Enrolled` - Enrolled
          #
          #   @param enrollment_id [String] ID of the enrollment (enrl\_\*)
          #
          #   @param dependent_ids [Array<String>, nil] List of dependent IDs to include in coverage (dpnd\_\*)
          #
          #   @param selected_plan_id [String, nil] ID of the selected plan (plan\_\*). Required if decision is 'Enrolled'

          # - `Enrolled` - Enrolled
          # - `Waived` - Waived
          #
          # @see VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election#decision
          module Decision
            extend VitableConnectAPI::Internal::Type::Enum

            ENROLLED = :Enrolled
            WAIVED = :Waived

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
