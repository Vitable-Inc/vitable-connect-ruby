# typed: strong

module VitableConnect
  module Models
    class Enrollment < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Enrollment, VitableConnect::Internal::AnyHash)
        end

      # Unique enrollment identifier (enrl\_\*)
      sig { returns(String) }
      attr_accessor :id

      # When the employee enrolled or waived
      sig { returns(T.nilable(Time)) }
      attr_accessor :answered_at

      # Nested benefit product summary
      sig { returns(VitableConnect::Enrollment::Benefit) }
      attr_reader :benefit

      sig { params(benefit: VitableConnect::Enrollment::Benefit::OrHash).void }
      attr_writer :benefit

      # Coverage period end date
      sig { returns(T.nilable(Date)) }
      attr_accessor :coverage_end

      # Coverage period start date
      sig { returns(Date) }
      attr_accessor :coverage_start

      # When the enrollment was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Employee monthly payroll deduction in cents
      sig { returns(T.nilable(Integer)) }
      attr_accessor :employee_deduction_in_cents

      # Employee ID (empl\_\*)
      sig { returns(String) }
      attr_accessor :employee_id

      # Employer monthly contribution in cents
      sig { returns(T.nilable(Integer)) }
      attr_accessor :employer_contribution_in_cents

      # Employer ID (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # - `pending` - Pending
      # - `enrolled` - Enrolled
      # - `waived` - Waived
      # - `inactive` - Inactive
      sig { returns(VitableConnect::EnrollmentStatus::TaggedSymbol) }
      attr_accessor :status

      # When coverage was terminated
      sig { returns(T.nilable(Time)) }
      attr_accessor :terminated_at

      # When the enrollment was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          answered_at: T.nilable(Time),
          benefit: VitableConnect::Enrollment::Benefit::OrHash,
          coverage_end: T.nilable(Date),
          coverage_start: Date,
          created_at: Time,
          employee_deduction_in_cents: T.nilable(Integer),
          employee_id: String,
          employer_contribution_in_cents: T.nilable(Integer),
          employer_id: String,
          status: VitableConnect::EnrollmentStatus::OrSymbol,
          terminated_at: T.nilable(Time),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique enrollment identifier (enrl\_\*)
        id:,
        # When the employee enrolled or waived
        answered_at:,
        # Nested benefit product summary
        benefit:,
        # Coverage period end date
        coverage_end:,
        # Coverage period start date
        coverage_start:,
        # When the enrollment was created
        created_at:,
        # Employee monthly payroll deduction in cents
        employee_deduction_in_cents:,
        # Employee ID (empl\_\*)
        employee_id:,
        # Employer monthly contribution in cents
        employer_contribution_in_cents:,
        # Employer ID (empr\_\*)
        employer_id:,
        # - `pending` - Pending
        # - `enrolled` - Enrolled
        # - `waived` - Waived
        # - `inactive` - Inactive
        status:,
        # When coverage was terminated
        terminated_at:,
        # When the enrollment was last updated
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            answered_at: T.nilable(Time),
            benefit: VitableConnect::Enrollment::Benefit,
            coverage_end: T.nilable(Date),
            coverage_start: Date,
            created_at: Time,
            employee_deduction_in_cents: T.nilable(Integer),
            employee_id: String,
            employer_contribution_in_cents: T.nilable(Integer),
            employer_id: String,
            status: VitableConnect::EnrollmentStatus::TaggedSymbol,
            terminated_at: T.nilable(Time),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Benefit < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Enrollment::Benefit,
              VitableConnect::Internal::AnyHash
            )
          end

        # Benefit product ID (bprd\_\*)
        sig { returns(String) }
        attr_accessor :id

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        sig { returns(VitableConnect::Category::TaggedSymbol) }
        attr_accessor :category

        # Display name of the benefit product
        sig { returns(String) }
        attr_accessor :name

        # - `EBA` - Eba Mec
        # - `VPC` - Vpc Enhanced
        # - `VPC_CORE` - Vpc Core
        # - `MEC` - Vpc Mec
        # - `MEC2` - Mec2
        # - `MEC_PLUS` - Mec Plus
        # - `MVP` - Mvp
        # - `MVP2` - Mvp2
        # - `MVPSL` - Mvpsl
        # - `MVPSL2` - Mvpsl2
        # - `VD` - Dental
        # - `VV` - Vision
        # - `ICHRA` - Ichra
        # - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
        # - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
        sig { returns(VitableConnect::ProductCode::TaggedSymbol) }
        attr_accessor :product_code

        # Nested benefit product summary
        sig do
          params(
            id: String,
            category: VitableConnect::Category::OrSymbol,
            name: String,
            product_code: VitableConnect::ProductCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Benefit product ID (bprd\_\*)
          id:,
          # - `Medical` - Medical
          # - `Dental` - Dental
          # - `Vision` - Vision
          # - `Hospital` - Hospital
          category:,
          # Display name of the benefit product
          name:,
          # - `EBA` - Eba Mec
          # - `VPC` - Vpc Enhanced
          # - `VPC_CORE` - Vpc Core
          # - `MEC` - Vpc Mec
          # - `MEC2` - Mec2
          # - `MEC_PLUS` - Mec Plus
          # - `MVP` - Mvp
          # - `MVP2` - Mvp2
          # - `MVPSL` - Mvpsl
          # - `MVPSL2` - Mvpsl2
          # - `VD` - Dental
          # - `VV` - Vision
          # - `ICHRA` - Ichra
          # - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
          # - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
          product_code:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              category: VitableConnect::Category::TaggedSymbol,
              name: String,
              product_code: VitableConnect::ProductCode::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
