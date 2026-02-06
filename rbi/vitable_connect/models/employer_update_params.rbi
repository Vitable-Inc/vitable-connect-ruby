# typed: strong

module VitableConnect
  module Models
    class EmployerUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerUpdateParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Whether the employer is active
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active

      # Employer address
      sig { returns(T.nilable(VitableConnect::EmployerUpdateParams::Address)) }
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(VitableConnect::EmployerUpdateParams::Address::OrHash)
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
            T.nilable(VitableConnect::EmployerUpdateParams::Address::OrHash),
          legal_name: T.nilable(String),
          name: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
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
            address: T.nilable(VitableConnect::EmployerUpdateParams::Address),
            legal_name: T.nilable(String),
            name: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Address < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::EmployerUpdateParams::Address,
              VitableConnect::Internal::AnyHash
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
