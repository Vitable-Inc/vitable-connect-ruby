# typed: strong

module VitableConnect
  module Models
    class MemberListQualifyingLifeEventsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Opaque qualifying life event identifier
      sig { returns(String) }
      attr_accessor :id

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
      sig do
        returns(
          VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      # Human-readable label for event_type
      sig { returns(String) }
      attr_accessor :event_type_label

      # Custom event description when event_type is Other; otherwise normally null
      sig { returns(T.nilable(String)) }
      attr_accessor :other_event

      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      sig do
        returns(
          VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # When the member submitted the event
      sig { returns(Time) }
      attr_accessor :submitted_at

      sig do
        params(
          id: String,
          event_type:
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::OrSymbol,
          event_type_label: String,
          other_event: T.nilable(String),
          status:
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::OrSymbol,
          submitted_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Opaque qualifying life event identifier
        id:,
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
        event_type:,
        # Human-readable label for event_type
        event_type_label:,
        # Custom event description when event_type is Other; otherwise normally null
        other_event:,
        # - `pending` - Pending
        # - `approved` - Approved
        # - `denied` - Denied
        status:,
        # When the member submitted the event
        submitted_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type:
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol,
            event_type_label: String,
            other_event: T.nilable(String),
            status:
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol,
            submitted_at: Time
          }
        )
      end
      def to_hash
      end

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
      module EventType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOST_JOB_BASED_COVERAGE =
          T.let(
            :lost_job_based_coverage,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        AGED_OFF_PARENT_PLAN =
          T.let(
            :aged_off_parent_plan,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        LOST_MEDICAID_CHIP_MEDICARE =
          T.let(
            :lost_medicaid_chip_medicare,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        LOST_DECERTIFIED_INDIVIDUAL_PLAN =
          T.let(
            :lost_decertified_individual_plan,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        MARRIED =
          T.let(
            :married,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        DIVORCED =
          T.let(
            :divorced,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        HAD_BABY =
          T.let(
            :had_baby,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        ADOPTED_CHILD =
          T.let(
            :adopted_child,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        FOSTER_CARE_PLACEMENT =
          T.let(
            :foster_care_placement,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        DEATH_OF_SPOUSE_OR_DEPENDENT =
          T.let(
            :death_of_spouse_or_dependent,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        COURT_ORDERED =
          T.let(
            :court_ordered,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        MOVED_TO_NEW_COVERAGE_AREA =
          T.let(
            :moved_to_new_coverage_area,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        MOVED_TO_US =
          T.let(
            :moved_to_us,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        MOVED_TO_OR_FROM_SCHOOL_HOUSING =
          T.let(
            :moved_to_or_from_school_housing,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        MOVED_TO_OR_FROM_SEASONAL_WORK_HOUSING =
          T.let(
            :moved_to_or_from_seasonal_work_housing,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        BECAME_US_CITIZEN =
          T.let(
            :became_us_citizen,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        LEFT_INCARCERATION =
          T.let(
            :left_incarceration,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        GAINED_TRIBAL_STATUS =
          T.let(
            :gained_tribal_status,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        STARTED_OR_ENDED_AMERICORPS_SERVICE =
          T.let(
            :started_or_ended_americorps_service,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        NEW_CHILD =
          T.let(
            :new_child,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      module Status
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
