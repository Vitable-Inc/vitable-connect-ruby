# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class CreatePlanYearRequest < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute coverage_end_date
        #
        #   @return [Date]
        required :coverage_end_date, Date

        # @!attribute coverage_start_date
        #
        #   @return [Date]
        required :coverage_start_date, Date

        # @!attribute employer_id
        #
        #   @return [String]
        required :employer_id, String

        # @!attribute open_enrollment_end_date
        #
        #   @return [Date]
        required :open_enrollment_end_date, Date

        # @!attribute open_enrollment_start_date
        #
        #   @return [Date]
        required :open_enrollment_start_date, Date

        # @!attribute contribution_classes
        #
        #   @return [Array<VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass>, nil]
        optional :contribution_classes,
                 -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass] }

        # @!attribute plan_costs
        #
        #   @return [Array<VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::PlanCost>, nil]
        optional :plan_costs,
                 -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost] }

        # @!method initialize(coverage_end_date:, coverage_start_date:, employer_id:, open_enrollment_end_date:, open_enrollment_start_date:, contribution_classes: nil, plan_costs: nil)
        #   @param coverage_end_date [Date]
        #   @param coverage_start_date [Date]
        #   @param employer_id [String]
        #   @param open_enrollment_end_date [Date]
        #   @param open_enrollment_start_date [Date]
        #   @param contribution_classes [Array<VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass>]
        #   @param plan_costs [Array<VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::PlanCost>]

        class ContributionClass < VitablePartnerAPI::Internal::Type::BaseModel
          # @!attribute compensation
          #
          #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation]
          required :compensation,
                   enum: -> { VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation }

          # @!attribute employer_contribution_in_cents
          #
          #   @return [Integer]
          required :employer_contribution_in_cents, Integer

          # @!attribute employment
          #
          #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment]
          required :employment,
                   enum: -> { VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment }

          # @!attribute family_status
          #
          #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus]
          required :family_status,
                   enum: -> { VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus }

          # @!attribute location
          #
          #   @return [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location]
          required :location,
                   enum: -> { VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location }

          # @!attribute location_value
          #
          #   @return [String, nil]
          optional :location_value, String

          # @!attribute max_age
          #
          #   @return [Integer, nil]
          optional :max_age, Integer

          # @!attribute min_age
          #
          #   @return [Integer, nil]
          optional :min_age, Integer

          # @!attribute plan_id
          #
          #   @return [String, nil]
          optional :plan_id, String, nil?: true

          # @!method initialize(compensation:, employer_contribution_in_cents:, employment:, family_status:, location:, location_value: nil, max_age: nil, min_age: nil, plan_id: nil)
          #   @param compensation [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation]
          #   @param employer_contribution_in_cents [Integer]
          #   @param employment [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment]
          #   @param family_status [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus]
          #   @param location [Symbol, VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location]
          #   @param location_value [String]
          #   @param max_age [Integer]
          #   @param min_age [Integer]
          #   @param plan_id [String, nil]

          # @see VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass#compensation
          module Compensation
            extend VitablePartnerAPI::Internal::Type::Enum

            UNSPECIFIED = :UNSPECIFIED
            SALARY = :SALARY
            HOURLY = :HOURLY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass#employment
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

          # @see VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass#family_status
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

          # @see VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass#location
          module Location
            extend VitablePartnerAPI::Internal::Type::Enum

            UNSPECIFIED = :UNSPECIFIED
            STATE = :STATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PlanCost < VitablePartnerAPI::Internal::Type::BaseModel
          # @!attribute dependent_cost_in_cents
          #
          #   @return [Integer]
          required :dependent_cost_in_cents, Integer

          # @!attribute employee_cost_in_cents
          #
          #   @return [Integer]
          required :employee_cost_in_cents, Integer

          # @!attribute plan_id
          #
          #   @return [String]
          required :plan_id, String

          # @!method initialize(dependent_cost_in_cents:, employee_cost_in_cents:, plan_id:)
          #   @param dependent_cost_in_cents [Integer]
          #   @param employee_cost_in_cents [Integer]
          #   @param plan_id [String]
        end
      end
    end
  end
end
