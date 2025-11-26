# typed: strong

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class CreatePlanYearRequest < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :coverage_end_date

        sig { returns(Date) }
        attr_accessor :coverage_start_date

        sig { returns(String) }
        attr_accessor :employer_id

        sig { returns(Date) }
        attr_accessor :open_enrollment_end_date

        sig { returns(Date) }
        attr_accessor :open_enrollment_start_date

        sig do
          returns(
            T.nilable(
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass
              ]
            )
          )
        end
        attr_reader :contribution_classes

        sig do
          params(
            contribution_classes:
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::OrHash
              ]
          ).void
        end
        attr_writer :contribution_classes

        sig do
          returns(
            T.nilable(
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost
              ]
            )
          )
        end
        attr_reader :plan_costs

        sig do
          params(
            plan_costs:
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost::OrHash
              ]
          ).void
        end
        attr_writer :plan_costs

        sig do
          params(
            coverage_end_date: Date,
            coverage_start_date: Date,
            employer_id: String,
            open_enrollment_end_date: Date,
            open_enrollment_start_date: Date,
            contribution_classes:
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::OrHash
              ],
            plan_costs:
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          coverage_end_date:,
          coverage_start_date:,
          employer_id:,
          open_enrollment_end_date:,
          open_enrollment_start_date:,
          contribution_classes: nil,
          plan_costs: nil
        )
        end

        sig do
          override.returns(
            {
              coverage_end_date: Date,
              coverage_start_date: Date,
              employer_id: String,
              open_enrollment_end_date: Date,
              open_enrollment_start_date: Date,
              contribution_classes:
                T::Array[
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass
                ],
              plan_costs:
                T::Array[
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost
                ]
            }
          )
        end
        def to_hash
        end

        class ContributionClass < VitablePartnerAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass,
                VitablePartnerAPI::Internal::AnyHash
              )
            end

          sig do
            returns(
              VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::OrSymbol
            )
          end
          attr_accessor :compensation

          sig { returns(Integer) }
          attr_accessor :employer_contribution_in_cents

          sig do
            returns(
              VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::OrSymbol
            )
          end
          attr_accessor :employment

          sig do
            returns(
              VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::OrSymbol
            )
          end
          attr_accessor :family_status

          sig do
            returns(
              VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location::OrSymbol
            )
          end
          attr_accessor :location

          sig { returns(T.nilable(String)) }
          attr_reader :location_value

          sig { params(location_value: String).void }
          attr_writer :location_value

          sig { returns(T.nilable(Integer)) }
          attr_reader :max_age

          sig { params(max_age: Integer).void }
          attr_writer :max_age

          sig { returns(T.nilable(Integer)) }
          attr_reader :min_age

          sig { params(min_age: Integer).void }
          attr_writer :min_age

          sig { returns(T.nilable(String)) }
          attr_accessor :plan_id

          sig do
            params(
              compensation:
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::OrSymbol,
              employer_contribution_in_cents: Integer,
              employment:
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::OrSymbol,
              family_status:
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::OrSymbol,
              location:
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location::OrSymbol,
              location_value: String,
              max_age: Integer,
              min_age: Integer,
              plan_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            compensation:,
            employer_contribution_in_cents:,
            employment:,
            family_status:,
            location:,
            location_value: nil,
            max_age: nil,
            min_age: nil,
            plan_id: nil
          )
          end

          sig do
            override.returns(
              {
                compensation:
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::OrSymbol,
                employer_contribution_in_cents: Integer,
                employment:
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::OrSymbol,
                family_status:
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::OrSymbol,
                location:
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location::OrSymbol,
                location_value: String,
                max_age: Integer,
                min_age: Integer,
                plan_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module Compensation
            extend VitablePartnerAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::TaggedSymbol
              )
            SALARY =
              T.let(
                :SALARY,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::TaggedSymbol
              )
            HOURLY =
              T.let(
                :HOURLY,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Compensation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Employment
            extend VitablePartnerAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::TaggedSymbol
              )
            FULL_TIME =
              T.let(
                :FULL_TIME,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::TaggedSymbol
              )
            PART_TIME =
              T.let(
                :PART_TIME,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::TaggedSymbol
              )
            TEMPORARY =
              T.let(
                :TEMPORARY,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::TaggedSymbol
              )
            SEASONAL =
              T.let(
                :SEASONAL,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Employment::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module FamilyStatus
            extend VitablePartnerAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::TaggedSymbol
              )
            EE =
              T.let(
                :EE,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::TaggedSymbol
              )
            ES =
              T.let(
                :ES,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::TaggedSymbol
              )
            EC =
              T.let(
                :EC,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::TaggedSymbol
              )
            EF =
              T.let(
                :EF,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::FamilyStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Location
            extend VitablePartnerAPI::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UNSPECIFIED =
              T.let(
                :UNSPECIFIED,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location::TaggedSymbol
              )
            STATE =
              T.let(
                :STATE,
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::Location::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PlanCost < VitablePartnerAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost,
                VitablePartnerAPI::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :dependent_cost_in_cents

          sig { returns(Integer) }
          attr_accessor :employee_cost_in_cents

          sig { returns(String) }
          attr_accessor :plan_id

          sig do
            params(
              dependent_cost_in_cents: Integer,
              employee_cost_in_cents: Integer,
              plan_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            dependent_cost_in_cents:,
            employee_cost_in_cents:,
            plan_id:
          )
          end

          sig do
            override.returns(
              {
                dependent_cost_in_cents: Integer,
                employee_cost_in_cents: Integer,
                plan_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
