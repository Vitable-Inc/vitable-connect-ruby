# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class PlanContributionClass < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute compensation
        #
        #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::Compensation]
        required :compensation,
                 enum: -> { VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation }

        # @!attribute employer_contribution_in_cents
        #
        #   @return [Integer]
        required :employer_contribution_in_cents, Integer

        # @!attribute employment
        #
        #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::Employment]
        required :employment, enum: -> { VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment }

        # @!attribute family_status
        #
        #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::FamilyStatus]
        required :family_status,
                 enum: -> { VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus }

        # @!attribute location
        #
        #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::Location]
        required :location, enum: -> { VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location }

        # @!attribute plan_year_id
        #
        #   @return [String]
        required :plan_year_id, String

        # @!attribute location_value
        #
        #   @return [String, nil]
        optional :location_value, String, nil?: true

        # @!attribute max_age
        #
        #   @return [Integer, nil]
        optional :max_age, Integer, nil?: true

        # @!attribute min_age
        #
        #   @return [Integer, nil]
        optional :min_age, Integer, nil?: true

        # @!attribute plan_id
        #
        #   @return [String, nil]
        optional :plan_id, String, nil?: true

        # @!method initialize(compensation:, employer_contribution_in_cents:, employment:, family_status:, location:, plan_year_id:, location_value: nil, max_age: nil, min_age: nil, plan_id: nil)
        #   @param compensation [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::Compensation]
        #   @param employer_contribution_in_cents [Integer]
        #   @param employment [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::Employment]
        #   @param family_status [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::FamilyStatus]
        #   @param location [Symbol, VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass::Location]
        #   @param plan_year_id [String]
        #   @param location_value [String, nil]
        #   @param max_age [Integer, nil]
        #   @param min_age [Integer, nil]
        #   @param plan_id [String, nil]

        # @see VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass#compensation
        module Compensation
          extend VitablePartnerAPI::Internal::Type::Enum

          UNSPECIFIED = :UNSPECIFIED
          SALARY = :SALARY
          HOURLY = :HOURLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass#employment
        module Employment
          extend VitablePartnerAPI::Internal::Type::Enum

          UNSPECIFIED = :UNSPECIFIED
          FULL_TIME = :FULL_TIME
          PART_TIME = :PART_TIME
          TEMPORARY = :TEMPORARY
          SEASONAL = :SEASONAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass#family_status
        module FamilyStatus
          extend VitablePartnerAPI::Internal::Type::Enum

          UNSPECIFIED = :UNSPECIFIED
          EE = :EE
          ES = :ES
          EC = :EC
          EF = :EF

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass#location
        module Location
          extend VitablePartnerAPI::Internal::Type::Enum

          UNSPECIFIED = :UNSPECIFIED
          STATE = :STATE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
