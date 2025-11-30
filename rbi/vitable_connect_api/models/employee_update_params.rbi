# typed: strong

module VitableConnectAPI
  module Models
    class EmployeeUpdateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EmployeeUpdateParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Employee's residential address
      sig do
        returns(T.nilable(VitableConnectAPI::EmployeeUpdateParams::Address))
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(VitableConnectAPI::EmployeeUpdateParams::Address::OrHash)
        ).void
      end
      attr_writer :address

      # Email address
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # - `Full Time` - Full Time
      # - `Part Time` - Part Time
      # - `Temporary` - Temporary
      # - `Intern` - Intern
      # - `Seasonal` - Seasonal
      # - `Individual Contractor` - Individual Contractor
      sig do
        returns(
          T.nilable(VitableConnectAPI::Employers::EmployeeClass::OrSymbol)
        )
      end
      attr_accessor :employee_class

      # Gender identity
      sig { returns(T.nilable(String)) }
      attr_accessor :gender

      # Phone number
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # Termination date if terminating
      sig { returns(T.nilable(Date)) }
      attr_accessor :termination_date

      sig do
        params(
          address:
            T.nilable(VitableConnectAPI::EmployeeUpdateParams::Address::OrHash),
          email: T.nilable(String),
          employee_class:
            T.nilable(VitableConnectAPI::Employers::EmployeeClass::OrSymbol),
          gender: T.nilable(String),
          phone: T.nilable(String),
          termination_date: T.nilable(Date),
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Employee's residential address
        address: nil,
        # Email address
        email: nil,
        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        employee_class: nil,
        # Gender identity
        gender: nil,
        # Phone number
        phone: nil,
        # Termination date if terminating
        termination_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            address:
              T.nilable(VitableConnectAPI::EmployeeUpdateParams::Address),
            email: T.nilable(String),
            employee_class:
              T.nilable(VitableConnectAPI::Employers::EmployeeClass::OrSymbol),
            gender: T.nilable(String),
            phone: T.nilable(String),
            termination_date: T.nilable(Date),
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
              VitableConnectAPI::EmployeeUpdateParams::Address,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # City name
        sig { returns(String) }
        attr_accessor :city

        # Two-letter state code
        sig { returns(String) }
        attr_accessor :state

        # Primary street address
        sig { returns(String) }
        attr_accessor :street_1

        # ZIP code
        sig { returns(String) }
        attr_accessor :zip_code

        # Country code
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # Secondary street address
        sig { returns(T.nilable(String)) }
        attr_accessor :street_2

        # Employee's residential address
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
          # Two-letter state code
          state:,
          # Primary street address
          street_1:,
          # ZIP code
          zip_code:,
          # Country code
          country: nil,
          # Secondary street address
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
