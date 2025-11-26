# typed: strong

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class PlanContributionClass < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::BenefitProducts::PlanContributionClass,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::TaggedSymbol
          )
        end
        attr_accessor :compensation

        sig { returns(Integer) }
        attr_accessor :employer_contribution_in_cents

        sig do
          returns(
            VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
          )
        end
        attr_accessor :employment

        sig do
          returns(
            VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
          )
        end
        attr_accessor :family_status

        sig do
          returns(
            VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location::TaggedSymbol
          )
        end
        attr_accessor :location

        sig { returns(String) }
        attr_accessor :plan_year_id

        sig { returns(T.nilable(String)) }
        attr_accessor :location_value

        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_age

        sig { returns(T.nilable(Integer)) }
        attr_accessor :min_age

        sig { returns(T.nilable(String)) }
        attr_accessor :plan_id

        sig do
          params(
            compensation:
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::OrSymbol,
            employer_contribution_in_cents: Integer,
            employment:
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::OrSymbol,
            family_status:
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::OrSymbol,
            location:
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location::OrSymbol,
            plan_year_id: String,
            location_value: T.nilable(String),
            max_age: T.nilable(Integer),
            min_age: T.nilable(Integer),
            plan_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          compensation:,
          employer_contribution_in_cents:,
          employment:,
          family_status:,
          location:,
          plan_year_id:,
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
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::TaggedSymbol,
              employer_contribution_in_cents: Integer,
              employment:
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol,
              family_status:
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol,
              location:
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location::TaggedSymbol,
              plan_year_id: String,
              location_value: T.nilable(String),
              max_age: T.nilable(Integer),
              min_age: T.nilable(Integer),
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
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSPECIFIED =
            T.let(
              :UNSPECIFIED,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::TaggedSymbol
            )
          SALARY =
            T.let(
              :SALARY,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::TaggedSymbol
            )
          HOURLY =
            T.let(
              :HOURLY,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Compensation::TaggedSymbol
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
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSPECIFIED =
            T.let(
              :UNSPECIFIED,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
            )
          FULL_TIME =
            T.let(
              :FULL_TIME,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
            )
          PART_TIME =
            T.let(
              :PART_TIME,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
            )
          TEMPORARY =
            T.let(
              :TEMPORARY,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
            )
          SEASONAL =
            T.let(
              :SEASONAL,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Employment::TaggedSymbol
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
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSPECIFIED =
            T.let(
              :UNSPECIFIED,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
            )
          EE =
            T.let(
              :EE,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
            )
          EC =
            T.let(
              :EC,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
            )
          EF =
            T.let(
              :EF,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::FamilyStatus::TaggedSymbol
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
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSPECIFIED =
            T.let(
              :UNSPECIFIED,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location::TaggedSymbol
            )
          STATE =
            T.let(
              :STATE,
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::BenefitProducts::PlanContributionClass::Location::TaggedSymbol
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
