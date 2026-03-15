# typed: strong

module VitableConnect
  module Models
    class EmployeeUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployeeUpdateParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employee identifier (empl\_\*)
      sig { returns(String) }
      attr_accessor :employee_id

      # Employee's residential address
      sig { returns(T.nilable(VitableConnect::EmployeeUpdateParams::Address)) }
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(VitableConnect::EmployeeUpdateParams::Address::OrHash)
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
      sig { returns(T.nilable(VitableConnect::EmployeeClass::OrSymbol)) }
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
          employee_id: String,
          address:
            T.nilable(VitableConnect::EmployeeUpdateParams::Address::OrHash),
          email: T.nilable(String),
          employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
          gender: T.nilable(String),
          phone: T.nilable(String),
          termination_date: T.nilable(Date),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employee identifier (empl\_\*)
        employee_id:,
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
            employee_id: String,
            address: T.nilable(VitableConnect::EmployeeUpdateParams::Address),
            email: T.nilable(String),
            employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
            gender: T.nilable(String),
            phone: T.nilable(String),
            termination_date: T.nilable(Date),
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
              VitableConnect::EmployeeUpdateParams::Address,
              VitableConnect::Internal::AnyHash
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
