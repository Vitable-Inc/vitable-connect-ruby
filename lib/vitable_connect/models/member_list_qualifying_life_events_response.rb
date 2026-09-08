# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_qualifying_life_events
    class MemberListQualifyingLifeEventsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Opaque qualifying life event identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute event_type
      #   - `lost_job_based_coverage` - lost_job_based_coverage
      #   - `aged_off_parent_plan` - aged_off_parent_plan
      #   - `lost_medicaid_chip_medicare` - lost_medicaid_chip_medicare
      #   - `lost_decertified_individual_plan` - lost_decertified_individual_plan
      #   - `married` - married
      #   - `divorced` - divorced
      #   - `had_baby` - had_baby
      #   - `adopted_child` - adopted_child
      #   - `foster_care_placement` - foster_care_placement
      #   - `death_of_spouse_or_dependent` - death_of_spouse_or_dependent
      #   - `court_ordered` - court_ordered
      #   - `moved_to_new_coverage_area` - moved_to_new_coverage_area
      #   - `moved_to_us` - moved_to_us
      #   - `moved_to_or_from_school_housing` - moved_to_or_from_school_housing
      #   - `moved_to_or_from_seasonal_work_housing` -
      #     moved_to_or_from_seasonal_work_housing
      #   - `became_us_citizen` - became_us_citizen
      #   - `left_incarceration` - left_incarceration
      #   - `gained_tribal_status` - gained_tribal_status
      #   - `started_or_ended_americorps_service` - started_or_ended_americorps_service
      #   - `new_child` - new_child
      #   - `other` - other
      #
      #   @return [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType]
      required :event_type,
               enum: -> { VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType }

      # @!attribute event_type_label
      #   Human-readable label for event_type
      #
      #   @return [String]
      required :event_type_label, String

      # @!attribute other_event
      #   Custom event description when event_type is Other; otherwise normally null
      #
      #   @return [String, nil]
      required :other_event, String, nil?: true

      # @!attribute status
      #   - `pending` - Pending
      #   - `approved` - Approved
      #   - `denied` - Denied
      #
      #   @return [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status]
      required :status, enum: -> { VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status }

      # @!attribute submitted_at
      #   When the member submitted the event
      #
      #   @return [Time]
      required :submitted_at, Time

      # @!method initialize(id:, event_type:, event_type_label:, other_event:, status:, submitted_at:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::MemberListQualifyingLifeEventsResponse} for more
      #   details.
      #
      #   @param id [String] Opaque qualifying life event identifier
      #
      #   @param event_type [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType] - `lost_job_based_coverage` - lost_job_based_coverage
      #
      #   @param event_type_label [String] Human-readable label for event_type
      #
      #   @param other_event [String, nil] Custom event description when event_type is Other; otherwise normally null
      #
      #   @param status [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status] - `pending` - Pending
      #
      #   @param submitted_at [Time] When the member submitted the event

      # - `lost_job_based_coverage` - lost_job_based_coverage
      # - `aged_off_parent_plan` - aged_off_parent_plan
      # - `lost_medicaid_chip_medicare` - lost_medicaid_chip_medicare
      # - `lost_decertified_individual_plan` - lost_decertified_individual_plan
      # - `married` - married
      # - `divorced` - divorced
      # - `had_baby` - had_baby
      # - `adopted_child` - adopted_child
      # - `foster_care_placement` - foster_care_placement
      # - `death_of_spouse_or_dependent` - death_of_spouse_or_dependent
      # - `court_ordered` - court_ordered
      # - `moved_to_new_coverage_area` - moved_to_new_coverage_area
      # - `moved_to_us` - moved_to_us
      # - `moved_to_or_from_school_housing` - moved_to_or_from_school_housing
      # - `moved_to_or_from_seasonal_work_housing` -
      #   moved_to_or_from_seasonal_work_housing
      # - `became_us_citizen` - became_us_citizen
      # - `left_incarceration` - left_incarceration
      # - `gained_tribal_status` - gained_tribal_status
      # - `started_or_ended_americorps_service` - started_or_ended_americorps_service
      # - `new_child` - new_child
      # - `other` - other
      #
      # @see VitableConnect::Models::MemberListQualifyingLifeEventsResponse#event_type
      module EventType
        extend VitableConnect::Internal::Type::Enum

        LOST_JOB_BASED_COVERAGE = :lost_job_based_coverage
        AGED_OFF_PARENT_PLAN = :aged_off_parent_plan
        LOST_MEDICAID_CHIP_MEDICARE = :lost_medicaid_chip_medicare
        LOST_DECERTIFIED_INDIVIDUAL_PLAN = :lost_decertified_individual_plan
        MARRIED = :married
        DIVORCED = :divorced
        HAD_BABY = :had_baby
        ADOPTED_CHILD = :adopted_child
        FOSTER_CARE_PLACEMENT = :foster_care_placement
        DEATH_OF_SPOUSE_OR_DEPENDENT = :death_of_spouse_or_dependent
        COURT_ORDERED = :court_ordered
        MOVED_TO_NEW_COVERAGE_AREA = :moved_to_new_coverage_area
        MOVED_TO_US = :moved_to_us
        MOVED_TO_OR_FROM_SCHOOL_HOUSING = :moved_to_or_from_school_housing
        MOVED_TO_OR_FROM_SEASONAL_WORK_HOUSING = :moved_to_or_from_seasonal_work_housing
        BECAME_US_CITIZEN = :became_us_citizen
        LEFT_INCARCERATION = :left_incarceration
        GAINED_TRIBAL_STATUS = :gained_tribal_status
        STARTED_OR_ENDED_AMERICORPS_SERVICE = :started_or_ended_americorps_service
        NEW_CHILD = :new_child
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      #
      # @see VitableConnect::Models::MemberListQualifyingLifeEventsResponse#status
      module Status
        extend VitableConnect::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        DENIED = :denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
