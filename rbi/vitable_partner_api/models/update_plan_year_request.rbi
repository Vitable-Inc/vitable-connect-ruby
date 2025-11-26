# typed: strong

module VitablePartnerAPI
  module Models
    class UpdatePlanYearRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::UpdatePlanYearRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass
            ]
          )
        )
      end
      attr_reader :contribution_classes

      sig do
        params(
          contribution_classes:
            T::Array[
              VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass::OrHash
            ]
        ).void
      end
      attr_writer :contribution_classes

      sig { returns(T.nilable(Date)) }
      attr_reader :coverage_end_date

      sig { params(coverage_end_date: Date).void }
      attr_writer :coverage_end_date

      sig { returns(T.nilable(Date)) }
      attr_reader :coverage_start_date

      sig { params(coverage_start_date: Date).void }
      attr_writer :coverage_start_date

      sig { returns(T.nilable(Date)) }
      attr_reader :open_enrollment_end_date

      sig { params(open_enrollment_end_date: Date).void }
      attr_writer :open_enrollment_end_date

      sig { returns(T.nilable(Date)) }
      attr_reader :open_enrollment_start_date

      sig { params(open_enrollment_start_date: Date).void }
      attr_writer :open_enrollment_start_date

      sig do
        returns(
          T.nilable(
            T::Array[VitablePartnerAPI::UpdatePlanYearRequest::PlanCost]
          )
        )
      end
      attr_reader :plan_costs

      sig do
        params(
          plan_costs:
            T::Array[VitablePartnerAPI::UpdatePlanYearRequest::PlanCost::OrHash]
        ).void
      end
      attr_writer :plan_costs

      sig do
        params(
          contribution_classes:
            T::Array[
              VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass::OrHash
            ],
          coverage_end_date: Date,
          coverage_start_date: Date,
          open_enrollment_end_date: Date,
          open_enrollment_start_date: Date,
          plan_costs:
            T::Array[VitablePartnerAPI::UpdatePlanYearRequest::PlanCost::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        contribution_classes: nil,
        coverage_end_date: nil,
        coverage_start_date: nil,
        open_enrollment_end_date: nil,
        open_enrollment_start_date: nil,
        plan_costs: nil
      )
      end

      sig do
        override.returns(
          {
            contribution_classes:
              T::Array[
                VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass
              ],
            coverage_end_date: Date,
            coverage_start_date: Date,
            open_enrollment_end_date: Date,
            open_enrollment_start_date: Date,
            plan_costs:
              T::Array[VitablePartnerAPI::UpdatePlanYearRequest::PlanCost]
          }
        )
      end
      def to_hash
      end

      class ContributionClass < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :compensation

        sig { params(compensation: String).void }
        attr_writer :compensation

        sig { returns(T.nilable(Integer)) }
        attr_reader :employer_contribution_in_cents

        sig { params(employer_contribution_in_cents: Integer).void }
        attr_writer :employer_contribution_in_cents

        sig { returns(T.nilable(String)) }
        attr_reader :employment

        sig { params(employment: String).void }
        attr_writer :employment

        sig { returns(T.nilable(String)) }
        attr_reader :family_status

        sig { params(family_status: String).void }
        attr_writer :family_status

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

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
        attr_reader :plan_id

        sig { params(plan_id: String).void }
        attr_writer :plan_id

        sig do
          params(
            compensation: String,
            employer_contribution_in_cents: Integer,
            employment: String,
            family_status: String,
            location: String,
            location_value: String,
            max_age: Integer,
            min_age: Integer,
            plan_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          compensation: nil,
          employer_contribution_in_cents: nil,
          employment: nil,
          family_status: nil,
          location: nil,
          location_value: nil,
          max_age: nil,
          min_age: nil,
          plan_id: nil
        )
        end

        sig do
          override.returns(
            {
              compensation: String,
              employer_contribution_in_cents: Integer,
              employment: String,
              family_status: String,
              location: String,
              location_value: String,
              max_age: Integer,
              min_age: Integer,
              plan_id: String
            }
          )
        end
        def to_hash
        end
      end

      class PlanCost < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::UpdatePlanYearRequest::PlanCost,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :dependent_cost_in_cents

        sig { params(dependent_cost_in_cents: Integer).void }
        attr_writer :dependent_cost_in_cents

        sig { returns(T.nilable(Integer)) }
        attr_reader :employee_cost_in_cents

        sig { params(employee_cost_in_cents: Integer).void }
        attr_writer :employee_cost_in_cents

        sig { returns(T.nilable(String)) }
        attr_reader :plan_id

        sig { params(plan_id: String).void }
        attr_writer :plan_id

        sig do
          params(
            dependent_cost_in_cents: Integer,
            employee_cost_in_cents: Integer,
            plan_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          dependent_cost_in_cents: nil,
          employee_cost_in_cents: nil,
          plan_id: nil
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
