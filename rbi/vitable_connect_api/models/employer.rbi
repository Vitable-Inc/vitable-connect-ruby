# typed: strong

module VitableConnectAPI
  module Models
    class Employer < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Employer,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Unique employer identifier with 'empr\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # Whether the employer is currently active in the system
      sig { returns(T::Boolean) }
      attr_accessor :active

      # Timestamp when the employer was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Legal business name for compliance and tax purposes
      sig { returns(String) }
      attr_accessor :legal_name

      # Display name of the employer
      sig { returns(String) }
      attr_accessor :name

      # ID of the parent organization (org\_\*)
      sig { returns(String) }
      attr_accessor :organization_id

      # Timestamp when the employer was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Nested address within EmployerSerializer.
      sig { returns(T.nilable(VitableConnectAPI::Employer::Address)) }
      attr_reader :address

      sig do
        params(
          address: T.nilable(VitableConnectAPI::Employer::Address::OrHash)
        ).void
      end
      attr_writer :address

      # Employer Identification Number (masked in responses)
      sig { returns(T.nilable(String)) }
      attr_accessor :ein

      # ID of the benefit eligibility policy (epol\_\*), if assigned
      sig { returns(T.nilable(String)) }
      attr_accessor :eligibility_policy_id

      # Serializer for Employer entity in public API responses.
      #
      # Matches EmployerEntity from company module domain.
      sig do
        params(
          id: String,
          active: T::Boolean,
          created_at: Time,
          legal_name: String,
          name: String,
          organization_id: String,
          updated_at: Time,
          address: T.nilable(VitableConnectAPI::Employer::Address::OrHash),
          ein: T.nilable(String),
          eligibility_policy_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier with 'empr\_' prefix
        id:,
        # Whether the employer is currently active in the system
        active:,
        # Timestamp when the employer was created
        created_at:,
        # Legal business name for compliance and tax purposes
        legal_name:,
        # Display name of the employer
        name:,
        # ID of the parent organization (org\_\*)
        organization_id:,
        # Timestamp when the employer was last updated
        updated_at:,
        # Nested address within EmployerSerializer.
        address: nil,
        # Employer Identification Number (masked in responses)
        ein: nil,
        # ID of the benefit eligibility policy (epol\_\*), if assigned
        eligibility_policy_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            created_at: Time,
            legal_name: String,
            name: String,
            organization_id: String,
            updated_at: Time,
            address: T.nilable(VitableConnectAPI::Employer::Address),
            ein: T.nilable(String),
            eligibility_policy_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Address < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Employer::Address,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # City name
        sig { returns(String) }
        attr_accessor :city

        # Two-letter state code (e.g., CA, NY)
        sig { returns(String) }
        attr_accessor :state

        # Primary street address
        sig { returns(String) }
        attr_accessor :street_1

        # ZIP code (5 or 9 digit)
        sig { returns(String) }
        attr_accessor :zip_code

        # Country code (default: US)
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # Secondary street address (apt, suite, etc.)
        sig { returns(T.nilable(String)) }
        attr_accessor :street_2

        # Nested address within EmployerSerializer.
        sig do
          params(
            city: String,
            state: String,
            street_1: String,
            zip_code: String,
            country: String,
            street_2: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # City name
          city:,
          # Two-letter state code (e.g., CA, NY)
          state:,
          # Primary street address
          street_1:,
          # ZIP code (5 or 9 digit)
          zip_code:,
          # Country code (default: US)
          country: nil,
          # Secondary street address (apt, suite, etc.)
          street_2: nil
        )
        end

        sig do
          override.returns(
            {
              city: String,
              state: String,
              street_1: String,
              zip_code: String,
              country: String,
              street_2: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
