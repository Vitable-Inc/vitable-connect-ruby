# typed: strong

module VitableConnect
  module Models
    module Groups
      module Members
        class SyncSubmitParams < VitableConnect::Internal::Type::BaseModel
          extend VitableConnect::Internal::Type::RequestParameters::Converter
          include VitableConnect::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Groups::Members::SyncSubmitParams,
                VitableConnect::Internal::AnyHash
              )
            end

          # Unique group identifier (grp\_\*)
          sig { returns(String) }
          attr_accessor :group_id

          sig do
            returns(
              T::Array[
                VitableConnect::Groups::Members::SyncSubmitParams::Member
              ]
            )
          end
          attr_accessor :members

          sig do
            params(
              group_id: String,
              members:
                T::Array[
                  VitableConnect::Groups::Members::SyncSubmitParams::Member::OrHash
                ],
              request_options: VitableConnect::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique group identifier (grp\_\*)
            group_id:,
            members:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                group_id: String,
                members:
                  T::Array[
                    VitableConnect::Groups::Members::SyncSubmitParams::Member
                  ],
                request_options: VitableConnect::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Member < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Groups::Members::SyncSubmitParams::Member,
                  VitableConnect::Internal::AnyHash
                )
              end

            sig do
              returns(
                VitableConnect::Groups::Members::SyncSubmitParams::Member::Address
              )
            end
            attr_reader :address

            sig do
              params(
                address:
                  VitableConnect::Groups::Members::SyncSubmitParams::Member::Address::OrHash
              ).void
            end
            attr_writer :address

            sig { returns(Date) }
            attr_accessor :date_of_birth

            sig { returns(String) }
            attr_accessor :first_name

            sig { returns(String) }
            attr_accessor :last_name

            sig { returns(String) }
            attr_accessor :phone

            sig { returns(String) }
            attr_accessor :plan_id

            sig { returns(String) }
            attr_accessor :reference_id

            sig { returns(T.nilable(String)) }
            attr_accessor :email

            sig do
              params(
                address:
                  VitableConnect::Groups::Members::SyncSubmitParams::Member::Address::OrHash,
                date_of_birth: Date,
                first_name: String,
                last_name: String,
                phone: String,
                plan_id: String,
                reference_id: String,
                email: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              address:,
              date_of_birth:,
              first_name:,
              last_name:,
              phone:,
              plan_id:,
              reference_id:,
              email: nil
            )
            end

            sig do
              override.returns(
                {
                  address:
                    VitableConnect::Groups::Members::SyncSubmitParams::Member::Address,
                  date_of_birth: Date,
                  first_name: String,
                  last_name: String,
                  phone: String,
                  plan_id: String,
                  reference_id: String,
                  email: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Address < VitableConnect::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    VitableConnect::Groups::Members::SyncSubmitParams::Member::Address,
                    VitableConnect::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :address_line_1

              sig { returns(String) }
              attr_accessor :city

              sig { returns(String) }
              attr_accessor :state

              sig { returns(String) }
              attr_accessor :zipcode

              sig { returns(T.nilable(String)) }
              attr_accessor :address_line_2

              sig do
                params(
                  address_line_1: String,
                  city: String,
                  state: String,
                  zipcode: String,
                  address_line_2: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                address_line_1:,
                city:,
                state:,
                zipcode:,
                address_line_2: nil
              )
              end

              sig do
                override.returns(
                  {
                    address_line_1: String,
                    city: String,
                    state: String,
                    zipcode: String,
                    address_line_2: T.nilable(String)
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
end
