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
        sig do
          returns(VitableConnect::Enrollment::Benefit::Category::TaggedSymbol)
        end
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
        sig do
          returns(
            VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
          )
        end
        attr_accessor :product_code

        # Nested benefit product summary
        sig do
          params(
            id: String,
            category: VitableConnect::Enrollment::Benefit::Category::OrSymbol,
            name: String,
            product_code:
              VitableConnect::Enrollment::Benefit::ProductCode::OrSymbol
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
              category:
                VitableConnect::Enrollment::Benefit::Category::TaggedSymbol,
              name: String,
              product_code:
                VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        module Category
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, VitableConnect::Enrollment::Benefit::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEDICAL =
            T.let(
              :Medical,
              VitableConnect::Enrollment::Benefit::Category::TaggedSymbol
            )
          DENTAL =
            T.let(
              :Dental,
              VitableConnect::Enrollment::Benefit::Category::TaggedSymbol
            )
          VISION =
            T.let(
              :Vision,
              VitableConnect::Enrollment::Benefit::Category::TaggedSymbol
            )
          HOSPITAL =
            T.let(
              :Hospital,
              VitableConnect::Enrollment::Benefit::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Enrollment::Benefit::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

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
        module ProductCode
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, VitableConnect::Enrollment::Benefit::ProductCode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EBA =
            T.let(
              :EBA,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          VPC =
            T.let(
              :VPC,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          VPC_CORE =
            T.let(
              :VPC_CORE,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MEC =
            T.let(
              :MEC,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MEC2 =
            T.let(
              :MEC2,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MEC_PLUS =
            T.let(
              :MEC_PLUS,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MVP =
            T.let(
              :MVP,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MVP2 =
            T.let(
              :MVP2,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MVPSL =
            T.let(
              :MVPSL,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          MVPSL2 =
            T.let(
              :MVPSL2,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          VD =
            T.let(
              :VD,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          VV =
            T.let(
              :VV,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          ICHRA =
            T.let(
              :ICHRA,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          ICHRA_PREMIUM_PLUS =
            T.let(
              :ICHRA_PREMIUM_PLUS,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )
          ICHRA_REIMBURSEMENT_ONLY =
            T.let(
              :ICHRA_REIMBURSEMENT_ONLY,
              VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Enrollment::Benefit::ProductCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
