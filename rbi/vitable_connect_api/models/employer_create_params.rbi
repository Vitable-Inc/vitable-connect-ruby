# typed: strong

module VitableConnectAPI
  module Models
    class EmployerCreateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EmployerCreateParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Employer address
      sig { returns(VitableConnectAPI::EmployerCreateParams::Address) }
      attr_reader :address

      sig do
        params(
          address: VitableConnectAPI::EmployerCreateParams::Address::OrHash
        ).void
      end
      attr_writer :address

      # Employer Identification Number (format: XX-XXXXXXX)
      sig { returns(String) }
      attr_accessor :ein

      # Email address for billing and communications
      sig { returns(String) }
      attr_accessor :email

      # Legal business name
      sig { returns(String) }
      attr_accessor :legal_name

      # Employer display name
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          address: VitableConnectAPI::EmployerCreateParams::Address::OrHash,
          ein: String,
          email: String,
          legal_name: String,
          name: String,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Employer address
        address:,
        # Employer Identification Number (format: XX-XXXXXXX)
        ein:,
        # Email address for billing and communications
        email:,
        # Legal business name
        legal_name:,
        # Employer display name
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            address: VitableConnectAPI::EmployerCreateParams::Address,
            ein: String,
            email: String,
            legal_name: String,
            name: String,
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Address < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::EmployerCreateParams::Address,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Primary street address
        sig { returns(String) }
        attr_accessor :address_line_1

        # City name
        sig { returns(String) }
        attr_accessor :city

        # Two-letter state code
        sig { returns(String) }
        attr_accessor :state

        # ZIP code
        sig { returns(String) }
        attr_accessor :zipcode

        # Secondary street address
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line_2

        # Employer address
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
          # Two-letter state code
          state:,
          # ZIP code
          zipcode:,
          # Secondary street address
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
