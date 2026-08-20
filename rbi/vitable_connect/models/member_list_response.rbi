# typed: strong

module VitableConnect
  module Models
    class MemberListResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Member's legal first name
      sig { returns(String) }
      attr_accessor :first_name

      # Member's legal last name
      sig { returns(String) }
      attr_accessor :last_name

      # Member's residential address
      sig do
        returns(T.nilable(VitableConnect::Models::MemberListResponse::Address))
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(
              VitableConnect::Models::MemberListResponse::Address::OrHash
            )
        ).void
      end
      attr_writer :address

      # Email address
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Phone number (10-digit US domestic string)
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # Unique member identifier with 'mbr\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # A member in the organization's directory: identity, contact details, address,
      # and join date.
      sig do
        params(
          id: String,
          first_name: String,
          last_name: String,
          address:
            T.nilable(
              VitableConnect::Models::MemberListResponse::Address::OrHash
            ),
          email: T.nilable(String),
          phone: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique member identifier with 'mbr\_' prefix
        id:,
        # Member's legal first name
        first_name:,
        # Member's legal last name
        last_name:,
        # Member's residential address
        address: nil,
        # Email address
        email: nil,
        # Phone number (10-digit US domestic string)
        phone: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            first_name: String,
            last_name: String,
            address:
              T.nilable(VitableConnect::Models::MemberListResponse::Address),
            email: T.nilable(String),
            phone: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Address < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberListResponse::Address,
              VitableConnect::Internal::AnyHash
            )
          end

        # Primary street address
        sig { returns(String) }
        attr_accessor :address_line_1

        # City name
        sig { returns(String) }
        attr_accessor :city

        # Two-letter state code (e.g., CA, NY)
        sig { returns(String) }
        attr_accessor :state

        # ZIP code (5 or 9 digit)
        sig { returns(String) }
        attr_accessor :zipcode

        # Secondary street address (apt, suite, etc.)
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line_2

        # Member's residential address
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
          # Primary street address
          address_line_1:,
          # City name
          city:,
          # Two-letter state code (e.g., CA, NY)
          state:,
          # ZIP code (5 or 9 digit)
          zipcode:,
          # Secondary street address (apt, suite, etc.)
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
