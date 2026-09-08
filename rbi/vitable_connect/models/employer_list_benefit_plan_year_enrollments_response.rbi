# typed: strong

module VitableConnect
  module Models
    class EmployerListBenefitPlanYearEnrollmentsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # The carrier for this enrollment: the individual-market carrier for an ICHRA
      # plan, otherwise the benefit's own. Null when the benefit has no carrier.
      sig { returns(T.nilable(String)) }
      attr_accessor :carrier

      # Dependents covered under this enrollment today. Counts the same dependents
      # `premium_in_cents` is priced for, so a dependent whose termination is dated in
      # the future still counts.
      sig { returns(Integer) }
      attr_accessor :dependent_count

      # - `Enrolled` - Enrolled
      # - `Waived` - Waived
      # - `Pending` - Pending
      # - `Expired` - Expired
      sig do
        returns(
          VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol
        )
      end
      attr_accessor :election_status

      # What the employee is deducted monthly, in cents: `premium_in_cents` less
      # `employer_contribution_in_cents`, floored at zero. Null when unanswered/waived.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :employee_deduction_in_cents

      # Your own reference id for this employee, as you supplied it. Null when you have
      # not set one.
      sig { returns(T.nilable(String)) }
      attr_accessor :employee_external_reference_id

      # Our id for this person's employment with this employer (`empl_<...>`). A person
      # who leaves and is rehired has two.
      sig { returns(String) }
      attr_accessor :employee_id

      # The employer's monthly share of `premium_in_cents`, in cents. Null when
      # unanswered/waived.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :employer_contribution_in_cents

      # The member's first name.
      sig { returns(String) }
      attr_accessor :member_first_name

      # Our id for the person (`mbr_<...>`). Stable across every employer they work for.
      sig { returns(String) }
      attr_accessor :member_id

      # The member's last name.
      sig { returns(String) }
      attr_accessor :member_last_name

      # Chosen plan name, or null when unanswered/waived.
      sig { returns(T.nilable(String)) }
      attr_accessor :plan

      # - `Coverage Upcoming` - Coverage Upcoming
      # - `Coverage Effective` - Coverage Effective
      # - `Coverage Ended` - Coverage Ended
      # - `Cancelled` - Cancelled
      sig do
        returns(
          T.nilable(
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :policy_status

      # Monthly premium in cents for the chosen plan, dependents included. The plan's
      # own cost, not the employer's share of it. Null when unanswered/waived.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :premium_in_cents

      # Chosen coverage tier, or null when unanswered/waived.
      sig { returns(T.nilable(String)) }
      attr_accessor :tier

      sig do
        params(
          carrier: T.nilable(String),
          dependent_count: Integer,
          election_status:
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::OrSymbol,
          employee_deduction_in_cents: T.nilable(Integer),
          employee_external_reference_id: T.nilable(String),
          employee_id: String,
          employer_contribution_in_cents: T.nilable(Integer),
          member_first_name: String,
          member_id: String,
          member_last_name: String,
          plan: T.nilable(String),
          policy_status:
            T.nilable(
              VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::OrSymbol
            ),
          premium_in_cents: T.nilable(Integer),
          tier: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The carrier for this enrollment: the individual-market carrier for an ICHRA
        # plan, otherwise the benefit's own. Null when the benefit has no carrier.
        carrier:,
        # Dependents covered under this enrollment today. Counts the same dependents
        # `premium_in_cents` is priced for, so a dependent whose termination is dated in
        # the future still counts.
        dependent_count:,
        # - `Enrolled` - Enrolled
        # - `Waived` - Waived
        # - `Pending` - Pending
        # - `Expired` - Expired
        election_status:,
        # What the employee is deducted monthly, in cents: `premium_in_cents` less
        # `employer_contribution_in_cents`, floored at zero. Null when unanswered/waived.
        employee_deduction_in_cents:,
        # Your own reference id for this employee, as you supplied it. Null when you have
        # not set one.
        employee_external_reference_id:,
        # Our id for this person's employment with this employer (`empl_<...>`). A person
        # who leaves and is rehired has two.
        employee_id:,
        # The employer's monthly share of `premium_in_cents`, in cents. Null when
        # unanswered/waived.
        employer_contribution_in_cents:,
        # The member's first name.
        member_first_name:,
        # Our id for the person (`mbr_<...>`). Stable across every employer they work for.
        member_id:,
        # The member's last name.
        member_last_name:,
        # Chosen plan name, or null when unanswered/waived.
        plan:,
        # - `Coverage Upcoming` - Coverage Upcoming
        # - `Coverage Effective` - Coverage Effective
        # - `Coverage Ended` - Coverage Ended
        # - `Cancelled` - Cancelled
        policy_status:,
        # Monthly premium in cents for the chosen plan, dependents included. The plan's
        # own cost, not the employer's share of it. Null when unanswered/waived.
        premium_in_cents:,
        # Chosen coverage tier, or null when unanswered/waived.
        tier:
      )
      end

      sig do
        override.returns(
          {
            carrier: T.nilable(String),
            dependent_count: Integer,
            election_status:
              VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol,
            employee_deduction_in_cents: T.nilable(Integer),
            employee_external_reference_id: T.nilable(String),
            employee_id: String,
            employer_contribution_in_cents: T.nilable(Integer),
            member_first_name: String,
            member_id: String,
            member_last_name: String,
            plan: T.nilable(String),
            policy_status:
              T.nilable(
                VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
              ),
            premium_in_cents: T.nilable(Integer),
            tier: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # - `Enrolled` - Enrolled
      # - `Waived` - Waived
      # - `Pending` - Pending
      # - `Expired` - Expired
      module ElectionStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLLED =
          T.let(
            :Enrolled,
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol
          )
        WAIVED =
          T.let(
            :Waived,
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :Pending,
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :Expired,
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `Coverage Upcoming` - Coverage Upcoming
      # - `Coverage Effective` - Coverage Effective
      # - `Coverage Ended` - Coverage Ended
      # - `Cancelled` - Cancelled
      module PolicyStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COVERAGE_UPCOMING =
          T.let(
            :"Coverage Upcoming",
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
          )
        COVERAGE_EFFECTIVE =
          T.let(
            :"Coverage Effective",
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
          )
        COVERAGE_ENDED =
          T.let(
            :"Coverage Ended",
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :Cancelled,
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
