# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Enrollments#reissue
    class Enrollment < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute decision
      #
      #   @return [Symbol, VitablePartnerAPI::Models::Enrollment::Decision]
      required :decision, enum: -> { VitablePartnerAPI::Enrollment::Decision }

      # @!attribute employee_id
      #
      #   @return [String]
      required :employee_id, String

      # @!attribute plan_year_id
      #
      #   @return [String]
      required :plan_year_id, String

      # @!attribute status
      #
      #   @return [Symbol, VitablePartnerAPI::Models::Enrollment::Status]
      required :status, enum: -> { VitablePartnerAPI::Enrollment::Status }

      # @!method initialize(id:, decision:, employee_id:, plan_year_id:, status:)
      #   @param id [String]
      #   @param decision [Symbol, VitablePartnerAPI::Models::Enrollment::Decision]
      #   @param employee_id [String]
      #   @param plan_year_id [String]
      #   @param status [Symbol, VitablePartnerAPI::Models::Enrollment::Status]

      # @see VitablePartnerAPI::Models::Enrollment#decision
      module Decision
        extend VitablePartnerAPI::Internal::Type::Enum

        ENROLLED = :enrolled
        WAIVED = :waived

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see VitablePartnerAPI::Models::Enrollment#status
      module Status
        extend VitablePartnerAPI::Internal::Type::Enum

        PENDING = :pending
        ENROLLED = :enrolled
        WAIVED = :waived
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
