# typed: strong

module VitableConnect
  module Models
    module Members
      class QualifyingLifeEventResponse < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Members::QualifyingLifeEventResponse,
              VitableConnect::Internal::AnyHash
            )
          end

        # Serializer for Qualifying Life Event entity in public API responses.
        #
        # QLEs are significant life changes (marriage, birth, adoption, loss of coverage)
        # that allow employees to modify benefit elections outside of open enrollment.
        sig { returns(VitableConnect::Members::QualifyingLifeEvent) }
        attr_reader :data

        sig do
          params(
            data: VitableConnect::Members::QualifyingLifeEvent::OrHash
          ).void
        end
        attr_writer :data

        # Response containing a single qualifying life event resource.
        sig do
          params(
            data: VitableConnect::Members::QualifyingLifeEvent::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Serializer for Qualifying Life Event entity in public API responses.
          #
          # QLEs are significant life changes (marriage, birth, adoption, loss of coverage)
          # that allow employees to modify benefit elections outside of open enrollment.
          data:
        )
        end

        sig do
          override.returns(
            { data: VitableConnect::Members::QualifyingLifeEvent }
          )
        end
        def to_hash
        end
      end
    end
  end
end
