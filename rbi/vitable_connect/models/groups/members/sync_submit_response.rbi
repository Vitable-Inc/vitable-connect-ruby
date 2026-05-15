# typed: strong

module VitableConnect
  module Models
    module Groups
      module Members
        class SyncSubmitResponse < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::Groups::Members::SyncSubmitResponse,
                VitableConnect::Internal::AnyHash
              )
            end

          sig do
            returns(
              VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response containing a single group member sync detail resource.
          sig do
            params(
              data:
                VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data,
                  VitableConnect::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :accepted_at

            sig { returns(String) }
            attr_accessor :group_id

            sig { returns(String) }
            attr_accessor :request_id

            sig do
              params(
                accepted_at: Time,
                group_id: String,
                request_id: String
              ).returns(T.attached_class)
            end
            def self.new(accepted_at:, group_id:, request_id:)
            end

            sig do
              override.returns(
                { accepted_at: Time, group_id: String, request_id: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
