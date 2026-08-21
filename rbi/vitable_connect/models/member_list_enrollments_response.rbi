# typed: strong

module VitableConnect
  module Models
    class MemberListEnrollmentsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListEnrollmentsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[VitableConnect::Models::MemberListEnrollmentsResponse::Data]
        )
      end
      attr_accessor :data

      # Unpaginated `{"data": [...]}` list of member enrollments.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::MemberListEnrollmentsResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberListEnrollmentsResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Opaque, stable enrollment identifier used to target enrollment actions
        sig { returns(String) }
        attr_accessor :id

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        sig do
          returns(
            VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol
          )
        end
        attr_accessor :benefit_type

        # Earliest applicable coverage boundary (YYYY-MM-DD) when coverage was cancelled
        # before its effective start; null unless the enrollment was cancelled
        sig { returns(T.nilable(Date)) }
        attr_accessor :cancelled_date

        # - `Enrolled` - Enrolled
        # - `Waived` - Waived
        # - `Pending` - Pending
        # - `Expired` - Expired
        sig do
          returns(
            VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol
          )
        end
        attr_accessor :election_status

        # Name of the employer the enrollment is through
        sig { returns(String) }
        attr_accessor :employer_name

        # Enrollment / open-enrollment window start date (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :enrollment_window_start

        # True when today falls in the final month of the plan-year coverage window;
        # drives end-of-coverage enrollment actions on the client.
        sig { returns(T::Boolean) }
        attr_accessor :in_last_month_of_coverage

        # True when today falls inside the enrollment window this member has to answer in;
        # drives enrollment-action availability on the client.
        sig { returns(T::Boolean) }
        attr_accessor :is_within_enrollment_window

        # Benefit plan-year coverage end date (YYYY-MM-DD), distinct from this
        # enrollment's coverage_end; null when the plan year is open-ended
        sig { returns(T.nilable(Date)) }
        attr_accessor :plan_year_coverage_end

        # - `Coverage Upcoming` - Coverage Upcoming
        # - `Coverage Effective` - Coverage Effective
        # - `Coverage Ended` - Coverage Ended
        # - `Cancelled` - Cancelled
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
            )
          )
        end
        attr_accessor :policy_status

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
            VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
          )
        end
        attr_accessor :product_code

        # Display name of the benefit product
        sig { returns(String) }
        attr_accessor :product_name

        # Whether a qualifying life event would be required to reissue this enrollment
        # under the product and open-enrollment rule at the time this list was read
        sig { returns(T::Boolean) }
        attr_accessor :requires_qle_for_reissue

        # Insurance carrier name; null when no active carrier period is resolvable
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier_name

        # Coverage window end date (YYYY-MM-DD); null while coverage is open-ended
        sig { returns(T.nilable(Date)) }
        attr_accessor :coverage_end

        # Coverage window start date (YYYY-MM-DD)
        sig { returns(T.nilable(Date)) }
        attr_accessor :coverage_start

        # Employee monthly payroll deduction in cents; null unless the row is an election
        sig { returns(T.nilable(Integer)) }
        attr_accessor :employee_deduction_in_cents

        # Employer monthly contribution in cents; null unless the row is an election
        sig { returns(T.nilable(Integer)) }
        attr_accessor :employer_contribution_in_cents

        # Enrollment / open-enrollment window end date (YYYY-MM-DD); null when open-ended
        sig { returns(T.nilable(Date)) }
        attr_accessor :enrollment_window_end

        # Chosen benefit plan name; null unless the row is an election
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_name

        # Total monthly plan premium in cents; null unless the row is an election
        sig { returns(T.nilable(Integer)) }
        attr_accessor :premium_in_cents

        # Chosen benefit plan tier name (e.g., Employee Only); null unless the row is an
        # election
        sig { returns(T.nilable(String)) }
        attr_accessor :tier_name

        # Wire serializer for :class:`MemberEnrollmentDTO` (one benefit enrollment row).
        sig do
          params(
            id: String,
            benefit_type:
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::OrSymbol,
            cancelled_date: T.nilable(Date),
            election_status:
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::OrSymbol,
            employer_name: String,
            enrollment_window_start: Date,
            in_last_month_of_coverage: T::Boolean,
            is_within_enrollment_window: T::Boolean,
            plan_year_coverage_end: T.nilable(Date),
            policy_status:
              T.nilable(
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::OrSymbol
              ),
            product_code:
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::OrSymbol,
            product_name: String,
            requires_qle_for_reissue: T::Boolean,
            carrier_name: T.nilable(String),
            coverage_end: T.nilable(Date),
            coverage_start: T.nilable(Date),
            employee_deduction_in_cents: T.nilable(Integer),
            employer_contribution_in_cents: T.nilable(Integer),
            enrollment_window_end: T.nilable(Date),
            plan_name: T.nilable(String),
            premium_in_cents: T.nilable(Integer),
            tier_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Opaque, stable enrollment identifier used to target enrollment actions
          id:,
          # - `Medical` - Medical
          # - `Dental` - Dental
          # - `Vision` - Vision
          # - `Hospital` - Hospital
          benefit_type:,
          # Earliest applicable coverage boundary (YYYY-MM-DD) when coverage was cancelled
          # before its effective start; null unless the enrollment was cancelled
          cancelled_date:,
          # - `Enrolled` - Enrolled
          # - `Waived` - Waived
          # - `Pending` - Pending
          # - `Expired` - Expired
          election_status:,
          # Name of the employer the enrollment is through
          employer_name:,
          # Enrollment / open-enrollment window start date (YYYY-MM-DD)
          enrollment_window_start:,
          # True when today falls in the final month of the plan-year coverage window;
          # drives end-of-coverage enrollment actions on the client.
          in_last_month_of_coverage:,
          # True when today falls inside the enrollment window this member has to answer in;
          # drives enrollment-action availability on the client.
          is_within_enrollment_window:,
          # Benefit plan-year coverage end date (YYYY-MM-DD), distinct from this
          # enrollment's coverage_end; null when the plan year is open-ended
          plan_year_coverage_end:,
          # - `Coverage Upcoming` - Coverage Upcoming
          # - `Coverage Effective` - Coverage Effective
          # - `Coverage Ended` - Coverage Ended
          # - `Cancelled` - Cancelled
          policy_status:,
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
          product_code:,
          # Display name of the benefit product
          product_name:,
          # Whether a qualifying life event would be required to reissue this enrollment
          # under the product and open-enrollment rule at the time this list was read
          requires_qle_for_reissue:,
          # Insurance carrier name; null when no active carrier period is resolvable
          carrier_name: nil,
          # Coverage window end date (YYYY-MM-DD); null while coverage is open-ended
          coverage_end: nil,
          # Coverage window start date (YYYY-MM-DD)
          coverage_start: nil,
          # Employee monthly payroll deduction in cents; null unless the row is an election
          employee_deduction_in_cents: nil,
          # Employer monthly contribution in cents; null unless the row is an election
          employer_contribution_in_cents: nil,
          # Enrollment / open-enrollment window end date (YYYY-MM-DD); null when open-ended
          enrollment_window_end: nil,
          # Chosen benefit plan name; null unless the row is an election
          plan_name: nil,
          # Total monthly plan premium in cents; null unless the row is an election
          premium_in_cents: nil,
          # Chosen benefit plan tier name (e.g., Employee Only); null unless the row is an
          # election
          tier_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              benefit_type:
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol,
              cancelled_date: T.nilable(Date),
              election_status:
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol,
              employer_name: String,
              enrollment_window_start: Date,
              in_last_month_of_coverage: T::Boolean,
              is_within_enrollment_window: T::Boolean,
              plan_year_coverage_end: T.nilable(Date),
              policy_status:
                T.nilable(
                  VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
                ),
              product_code:
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol,
              product_name: String,
              requires_qle_for_reissue: T::Boolean,
              carrier_name: T.nilable(String),
              coverage_end: T.nilable(Date),
              coverage_start: T.nilable(Date),
              employee_deduction_in_cents: T.nilable(Integer),
              employer_contribution_in_cents: T.nilable(Integer),
              enrollment_window_end: T.nilable(Date),
              plan_name: T.nilable(String),
              premium_in_cents: T.nilable(Integer),
              tier_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        module BenefitType
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEDICAL =
            T.let(
              :Medical,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol
            )
          DENTAL =
            T.let(
              :Dental,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol
            )
          VISION =
            T.let(
              :Vision,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol
            )
          HOSPITAL =
            T.let(
              :Hospital,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENROLLED =
            T.let(
              :Enrolled,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol
            )
          WAIVED =
            T.let(
              :Waived,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol
            )
          PENDING =
            T.let(
              :Pending,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :Expired,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus::TaggedSymbol
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
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COVERAGE_UPCOMING =
            T.let(
              :"Coverage Upcoming",
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
            )
          COVERAGE_EFFECTIVE =
            T.let(
              :"Coverage Effective",
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
            )
          COVERAGE_ENDED =
            T.let(
              :"Coverage Ended",
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :Cancelled,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus::TaggedSymbol
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
              T.all(
                Symbol,
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EBA =
            T.let(
              :EBA,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          VPC =
            T.let(
              :VPC,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          VPC_CORE =
            T.let(
              :VPC_CORE,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MEC =
            T.let(
              :MEC,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MEC2 =
            T.let(
              :MEC2,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MEC_PLUS =
            T.let(
              :MEC_PLUS,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MVP =
            T.let(
              :MVP,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MVP2 =
            T.let(
              :MVP2,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MVPSL =
            T.let(
              :MVPSL,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          MVPSL2 =
            T.let(
              :MVPSL2,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          VD =
            T.let(
              :VD,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          VV =
            T.let(
              :VV,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          ICHRA =
            T.let(
              :ICHRA,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          ICHRA_PREMIUM_PLUS =
            T.let(
              :ICHRA_PREMIUM_PLUS,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )
          ICHRA_REIMBURSEMENT_ONLY =
            T.let(
              :ICHRA_REIMBURSEMENT_ONLY,
              VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode::TaggedSymbol
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
