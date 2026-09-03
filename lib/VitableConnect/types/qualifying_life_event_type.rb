# frozen_string_literal: true

module VitableConnect
  module Types
    module QualifyingLifeEventType
      extend VitableConnect::Internal::Types::Enum

      LOST_JOB_BASED_COVERAGE = "lost_job_based_coverage"
      AGED_OFF_PARENT_PLAN = "aged_off_parent_plan"
      LOST_MEDICAID_CHIP_MEDICARE = "lost_medicaid_chip_medicare"
      LOST_DECERTIFIED_INDIVIDUAL_PLAN = "lost_decertified_individual_plan"
      MARRIED = "married"
      DIVORCED = "divorced"
      HAD_BABY = "had_baby"
      ADOPTED_CHILD = "adopted_child"
      FOSTER_CARE_PLACEMENT = "foster_care_placement"
      DEATH_OF_SPOUSE_OR_DEPENDENT = "death_of_spouse_or_dependent"
      COURT_ORDERED = "court_ordered"
      MOVED_TO_NEW_COVERAGE_AREA = "moved_to_new_coverage_area"
      MOVED_TO_US = "moved_to_us"
      MOVED_TO_OR_FROM_SCHOOL_HOUSING = "moved_to_or_from_school_housing"
      MOVED_TO_OR_FROM_SEASONAL_WORK_HOUSING = "moved_to_or_from_seasonal_work_housing"
      BECAME_US_CITIZEN = "became_us_citizen"
      LEFT_INCARCERATION = "left_incarceration"
      GAINED_TRIBAL_STATUS = "gained_tribal_status"
      STARTED_OR_ENDED_AMERICORPS_SERVICE = "started_or_ended_americorps_service"
      NEW_CHILD = "new_child"
      OTHER = "other"
    end
  end
end
