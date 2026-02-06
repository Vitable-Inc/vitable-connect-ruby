# typed: strong

module VitableConnect
  module Models
    module Members
      class QualifyingLifeEventRetrieveParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Members::QualifyingLifeEventRetrieveParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique member identifier (mbr\_\*)
        sig { returns(String) }
        attr_accessor :member_id

        sig do
          params(
            member_id: String,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique member identifier (mbr\_\*)
          member_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              member_id: String,
              request_options: VitableConnect::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
