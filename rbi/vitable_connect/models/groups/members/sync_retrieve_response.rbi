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

            sig do
              returns(
                T.nilable(
                  VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results
                )
              )
            end
            attr_reader :results

            sig do
              params(
                results:
                  T.nilable(
                    VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::OrHash
                  )
              ).void
            end
            attr_writer :results

            sig do
              params(
                accepted_at: Time,
                completed_at: T.nilable(Time),
                group_id: String,
                request_id: String,
                results:
                  T.nilable(
                    VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::OrHash
                  )
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
                  results:
                    T.nilable(
                      VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results
                    )
                }
              )
            end
            def to_hash
            end

            class Results < VitableConnect::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results,
                    VitableConnect::Internal::AnyHash
                  )
                end

              sig { returns(T::Array[String]) }
              attr_accessor :added_group_member_ids

              sig do
                returns(
                  T::Array[
                    VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure
                  ]
                )
              end
              attr_accessor :failures

              sig { returns(T::Array[String]) }
              attr_accessor :removed_group_member_ids

              sig do
                params(
                  added_group_member_ids: T::Array[String],
                  failures:
                    T::Array[
                      VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::OrHash
                    ],
                  removed_group_member_ids: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                added_group_member_ids:,
                failures:,
                removed_group_member_ids:
              )
              end

              sig do
                override.returns(
                  {
                    added_group_member_ids: T::Array[String],
                    failures:
                      T::Array[
                        VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure
                      ],
                    removed_group_member_ids: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              class Failure < VitableConnect::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure,
                      VitableConnect::Internal::AnyHash
                    )
                  end

                # - `add` - add
                # - `remove` - remove
                sig do
                  returns(
                    VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation::TaggedSymbol
                  )
                end
                attr_accessor :operation

                sig { returns(String) }
                attr_accessor :reason

                sig { returns(String) }
                attr_accessor :reference_id

                sig do
                  params(
                    operation:
                      VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation::OrSymbol,
                    reason: String,
                    reference_id: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # - `add` - add
                  # - `remove` - remove
                  operation:,
                  reason:,
                  reference_id:
                )
                end

                sig do
                  override.returns(
                    {
                      operation:
                        VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation::TaggedSymbol,
                      reason: String,
                      reference_id: String
                    }
                  )
                end
                def to_hash
                end

                # - `add` - add
                # - `remove` - remove
                module Operation
                  extend VitableConnect::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ADD =
                    T.let(
                      :add,
                      VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation::TaggedSymbol
                    )
                  REMOVE =
                    T.let(
                      :remove,
                      VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data::Results::Failure::Operation::TaggedSymbol
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
      end
    end
  end
end
