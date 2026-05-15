# typed: strong

module VitableConnect
  module Models
    module Groups
      module Members
        class SyncRetrieveResponse < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::Groups::Members::SyncRetrieveResponse,
                VitableConnect::Internal::AnyHash
              )
            end

          sig do
            returns(
              VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Response containing a single group member sync request detail resource.
          sig do
            params(
              data:
                VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data,
                  VitableConnect::Internal::AnyHash
                )
              end

            sig { returns(Time) }
            attr_accessor :accepted_at

            sig { returns(T.nilable(Time)) }
            attr_accessor :completed_at

            sig { returns(String) }
            attr_accessor :group_id

            sig { returns(String) }
            attr_accessor :request_id

            sig { returns(T.anything) }
            attr_accessor :results

            sig do
              params(
                accepted_at: Time,
                completed_at: T.nilable(Time),
                group_id: String,
                request_id: String,
                results: T.anything
              ).returns(T.attached_class)
            end
            def self.new(
              accepted_at:,
              completed_at:,
              group_id:,
              request_id:,
              results:
            )
            end

            sig do
              override.returns(
                {
                  accepted_at: Time,
                  completed_at: T.nilable(Time),
                  group_id: String,
                  request_id: String,
                  results: T.anything
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
end
