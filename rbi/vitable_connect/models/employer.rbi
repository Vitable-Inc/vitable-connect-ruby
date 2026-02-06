# typed: strong

module VitableConnect
  module Models
    class Employer < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Employer, VitableConnect::Internal::AnyHash)
        end

      # Whether the employer is currently active in the system
      sig { returns(T::Boolean) }
      attr_accessor :active

      # Nested address within EmployerSerializer.
      sig { returns(VitableConnect::Employer::Address) }
      attr_reader :address

      sig { params(address: VitableConnect::Employer::Address::OrHash).void }
      attr_writer :address

      # Timestamp when the employer was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Legal business name for compliance and tax purposes
      sig { returns(String) }
      attr_accessor :legal_name

      # Display name of the employer
      sig { returns(String) }
      attr_accessor :name

      # Timestamp when the employer was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Email address for billing and communications
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Unique employer identifier with 'empr\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # Employer Identification Number (masked in responses)
      sig { returns(T.nilable(String)) }
      attr_accessor :ein

      # ID of the benefit eligibility policy (epol\_\*), if assigned
      sig { returns(T.nilable(String)) }
      attr_accessor :eligibility_policy_id

      # ID of the parent organization (org\_\*)
      sig { returns(String) }
      attr_accessor :organization_id

      # Serializer for Employer entity in public API responses.
      sig do
        params(
          id: String,
          active: T::Boolean,
          address: VitableConnect::Employer::Address::OrHash,
          created_at: Time,
          ein: T.nilable(String),
          eligibility_policy_id: T.nilable(String),
          legal_name: String,
          name: String,
          organization_id: String,
          updated_at: Time,
          email: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier with 'empr\_' prefix
        id:,
        # Whether the employer is currently active in the system
        active:,
        # Nested address within EmployerSerializer.
        address:,
        # Timestamp when the employer was created
        created_at:,
        # Employer Identification Number (masked in responses)
        ein:,
        # ID of the benefit eligibility policy (epol\_\*), if assigned
        eligibility_policy_id:,
        # Legal business name for compliance and tax purposes
        legal_name:,
        # Display name of the employer
        name:,
        # ID of the parent organization (org\_\*)
        organization_id:,
        # Timestamp when the employer was last updated
        updated_at:,
        # Email address for billing and communications
        email: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            address: VitableConnect::Employer::Address,
            created_at: Time,
            ein: T.nilable(String),
            eligibility_policy_id: T.nilable(String),
            legal_name: String,
            name: String,
            organization_id: String,
            updated_at: Time,
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
              VitableConnect::Employer::Address,
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

        # Nested address within EmployerSerializer.
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
