# typed: strong

module VitableConnect
  module Models
    module BenefitProducts
      class PlanYearResponse < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::BenefitProducts::PlanYearResponse,
              VitableConnect::Internal::AnyHash
            )
          end

        # Serializer for Plan Year entity in public API responses.
        #
        # A Plan Year represents a benefit period configuration including coverage dates,
        # open enrollment windows, available plans, and contribution structures.
        sig { returns(VitableConnect::BenefitProducts::PlanYear) }
        attr_reader :data

        sig do
          params(data: VitableConnect::BenefitProducts::PlanYear::OrHash).void
        end
        attr_writer :data

        # Response containing a single plan year resource.
        sig do
          params(
            data: VitableConnect::BenefitProducts::PlanYear::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Serializer for Plan Year entity in public API responses.
          #
          # A Plan Year represents a benefit period configuration including coverage dates,
          # open enrollment windows, available plans, and contribution structures.
          data:
        )
        end

        sig do
          override.returns({ data: VitableConnect::BenefitProducts::PlanYear })
        end
        def to_hash
        end
      end
    end
  end
end
