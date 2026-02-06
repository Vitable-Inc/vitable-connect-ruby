# typed: strong

module VitableConnectAPI
  module Models
    class EmployerUpdateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EmployerUpdateParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Whether the employer is active
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active

      # Employer address
      sig do
        returns(T.nilable(VitableConnectAPI::EmployerUpdateParams::Address))
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(VitableConnectAPI::EmployerUpdateParams::Address::OrHash)
        ).void
      end
      attr_writer :address

      # Legal business name
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_name

      # Employer display name
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          active: T.nilable(T::Boolean),
          address:
            T.nilable(VitableConnectAPI::EmployerUpdateParams::Address::OrHash),
          legal_name: T.nilable(String),
          name: T.nilable(String),
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the employer is active
        active: nil,
        # Employer address
        address: nil,
        # Legal business name
        legal_name: nil,
        # Employer display name
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active: T.nilable(T::Boolean),
            address:
              T.nilable(VitableConnectAPI::EmployerUpdateParams::Address),
            legal_name: T.nilable(String),
            name: T.nilable(String),
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
              VitableConnectAPI::EmployerUpdateParams::Address,
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
