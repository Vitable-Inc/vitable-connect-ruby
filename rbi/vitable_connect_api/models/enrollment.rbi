# typed: strong

module VitableConnectAPI
  module Models
    class Enrollment < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Enrollment,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Unique enrollment identifier with 'enrl\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # ID of the benefit product (bprd\_\*)
      sig { returns(String) }
      attr_accessor :benefit_product_id

      # Timestamp when the enrollment was created
      sig { returns(Time) }
      attr_accessor :created_at

      # ID of the employee (empl\_\*)
      sig { returns(String) }
      attr_accessor :employee_id

      # ID of the plan year (plyr\_\*)
      sig { returns(String) }
      attr_accessor :plan_year_id

      # - `pending` - Pending
      # - `enrolled` - Enrolled
      # - `waived` - Waived
      # - `inactive` - Inactive
      sig do
        returns(VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol)
      end
      attr_accessor :status

      # Timestamp when the enrollment was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Date when coverage ends
      sig { returns(T.nilable(Date)) }
      attr_accessor :coverage_end_date

      # Date when coverage begins
      sig { returns(T.nilable(Date)) }
      attr_accessor :coverage_start_date

      # - `Unspecified` - Unspecified
      # - `EE` - Ee
      # - `ES` - Es
      # - `EC` - Ec
      # - `EF` - Ef
      sig { returns(T.nilable(VitableConnectAPI::CoverageTier::TaggedSymbol)) }
      attr_accessor :coverage_tier

      # Employee's election decision: 'enrolled' (accepted) or 'waived' (declined)
      sig { returns(T.nilable(String)) }
      attr_accessor :decision

      # Employee's monthly contribution in cents
      sig { returns(T.nilable(Integer)) }
      attr_accessor :employee_contribution_cents

      # Employer's monthly contribution in cents
      sig { returns(T.nilable(Integer)) }
      attr_accessor :employer_contribution_cents

      # List of dependents included in this enrollment
      sig do
        returns(
          T.nilable(T::Array[VitableConnectAPI::Enrollment::EnrolledDependent])
        )
      end
      attr_reader :enrolled_dependents

      sig do
        params(
          enrolled_dependents:
            T::Array[VitableConnectAPI::Enrollment::EnrolledDependent::OrHash]
        ).void
      end
      attr_writer :enrolled_dependents

      # ID of the selected plan (plan\_\*), if enrolled
      sig { returns(T.nilable(String)) }
      attr_accessor :selected_plan_id

      # Name of the selected plan
      sig { returns(T.nilable(String)) }
      attr_accessor :selected_plan_name

      # Serializer for Enrollment entity in public API responses.
      #
      # An Enrollment represents an employee's benefit enrollment for a specific plan
      # year.
      sig do
        params(
          id: String,
          benefit_product_id: String,
          created_at: Time,
          employee_id: String,
          plan_year_id: String,
          status: VitableConnectAPI::Employees::EnrollmentStatus::OrSymbol,
          updated_at: Time,
          coverage_end_date: T.nilable(Date),
          coverage_start_date: T.nilable(Date),
          coverage_tier: T.nilable(VitableConnectAPI::CoverageTier::OrSymbol),
          decision: T.nilable(String),
          employee_contribution_cents: T.nilable(Integer),
          employer_contribution_cents: T.nilable(Integer),
          enrolled_dependents:
            T::Array[VitableConnectAPI::Enrollment::EnrolledDependent::OrHash],
          selected_plan_id: T.nilable(String),
          selected_plan_name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique enrollment identifier with 'enrl\_' prefix
        id:,
        # ID of the benefit product (bprd\_\*)
        benefit_product_id:,
        # Timestamp when the enrollment was created
        created_at:,
        # ID of the employee (empl\_\*)
        employee_id:,
        # ID of the plan year (plyr\_\*)
        plan_year_id:,
        # - `pending` - Pending
        # - `enrolled` - Enrolled
        # - `waived` - Waived
        # - `inactive` - Inactive
        status:,
        # Timestamp when the enrollment was last updated
        updated_at:,
        # Date when coverage ends
        coverage_end_date: nil,
        # Date when coverage begins
        coverage_start_date: nil,
        # - `Unspecified` - Unspecified
        # - `EE` - Ee
        # - `ES` - Es
        # - `EC` - Ec
        # - `EF` - Ef
        coverage_tier: nil,
        # Employee's election decision: 'enrolled' (accepted) or 'waived' (declined)
        decision: nil,
        # Employee's monthly contribution in cents
        employee_contribution_cents: nil,
        # Employer's monthly contribution in cents
        employer_contribution_cents: nil,
        # List of dependents included in this enrollment
        enrolled_dependents: nil,
        # ID of the selected plan (plan\_\*), if enrolled
        selected_plan_id: nil,
        # Name of the selected plan
        selected_plan_name: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            benefit_product_id: String,
            created_at: Time,
            employee_id: String,
            plan_year_id: String,
            status:
              VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol,
            updated_at: Time,
            coverage_end_date: T.nilable(Date),
            coverage_start_date: T.nilable(Date),
            coverage_tier:
              T.nilable(VitableConnectAPI::CoverageTier::TaggedSymbol),
            decision: T.nilable(String),
            employee_contribution_cents: T.nilable(Integer),
            employer_contribution_cents: T.nilable(Integer),
            enrolled_dependents:
              T::Array[VitableConnectAPI::Enrollment::EnrolledDependent],
            selected_plan_id: T.nilable(String),
            selected_plan_name: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class EnrolledDependent < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Enrollment::EnrolledDependent,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # ID of the dependent (dpnd\_\*)
        sig { returns(String) }
        attr_accessor :dependent_id

        # Dependent's first name
        sig { returns(String) }
        attr_accessor :first_name

        # Dependent's last name
        sig { returns(String) }
        attr_accessor :last_name

        # - `Spouse` - Spouse
        # - `Child` - Child
        sig { returns(VitableConnectAPI::Members::Relationship::TaggedSymbol) }
        attr_accessor :relationship

        # Dependent included in an enrollment.
        sig do
          params(
            dependent_id: String,
            first_name: String,
            last_name: String,
            relationship: VitableConnectAPI::Members::Relationship::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the dependent (dpnd\_\*)
          dependent_id:,
          # Dependent's first name
          first_name:,
          # Dependent's last name
          last_name:,
          # - `Spouse` - Spouse
          # - `Child` - Child
          relationship:
        )
        end

        sig do
          override.returns(
            {
              dependent_id: String,
              first_name: String,
              last_name: String,
              relationship:
                VitableConnectAPI::Members::Relationship::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
