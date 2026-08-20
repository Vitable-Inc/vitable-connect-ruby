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

      # Past or present date applied to each tracked employment field included in this
      # request
      sig { returns(Date) }
      attr_accessor :effective_date

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

      # - `Salary` - Salary
      # - `Hourly` - Hourly
      sig do
        returns(
          T.nilable(
            VitableConnect::EmployeeUpdateParams::CompensationType::OrSymbol
          )
        )
      end
      attr_accessor :compensation_type

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

      # - `Male` - Male
      # - `Female` - Female
      # - `Transgender` - Transgender
      # - `Non-binary` - Non-binary
      # - `Prefer not to respond` - Prefer not to respond
      sig do
        returns(
          T.nilable(VitableConnect::EmployeeUpdateParams::Gender::OrSymbol)
        )
      end
      attr_accessor :gender

      # Phone number
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # Employment start date
      sig { returns(T.nilable(Date)) }
      attr_accessor :start_date

      sig do
        params(
          employee_id: String,
          effective_date: Date,
          address:
            T.nilable(VitableConnect::EmployeeUpdateParams::Address::OrHash),
          compensation_type:
            T.nilable(
              VitableConnect::EmployeeUpdateParams::CompensationType::OrSymbol
            ),
          email: T.nilable(String),
          employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
          gender:
            T.nilable(VitableConnect::EmployeeUpdateParams::Gender::OrSymbol),
          phone: T.nilable(String),
          start_date: T.nilable(Date),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employee identifier (empl\_\*)
        employee_id:,
        # Past or present date applied to each tracked employment field included in this
        # request
        effective_date:,
        # Employee's residential address
        address: nil,
        # - `Salary` - Salary
        # - `Hourly` - Hourly
        compensation_type: nil,
        # Email address
        email: nil,
        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        employee_class: nil,
        # - `Male` - Male
        # - `Female` - Female
        # - `Transgender` - Transgender
        # - `Non-binary` - Non-binary
        # - `Prefer not to respond` - Prefer not to respond
        gender: nil,
        # Phone number
        phone: nil,
        # Employment start date
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employee_id: String,
            effective_date: Date,
            address: T.nilable(VitableConnect::EmployeeUpdateParams::Address),
            compensation_type:
              T.nilable(
                VitableConnect::EmployeeUpdateParams::CompensationType::OrSymbol
              ),
            email: T.nilable(String),
            employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
            gender:
              T.nilable(VitableConnect::EmployeeUpdateParams::Gender::OrSymbol),
            phone: T.nilable(String),
            start_date: T.nilable(Date),
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

      # - `Salary` - Salary
      # - `Hourly` - Hourly
      module CompensationType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployeeUpdateParams::CompensationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SALARY =
          T.let(
            :Salary,
            VitableConnect::EmployeeUpdateParams::CompensationType::TaggedSymbol
          )
        HOURLY =
          T.let(
            :Hourly,
            VitableConnect::EmployeeUpdateParams::CompensationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployeeUpdateParams::CompensationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `Male` - Male
      # - `Female` - Female
      # - `Transgender` - Transgender
      # - `Non-binary` - Non-binary
      # - `Prefer not to respond` - Prefer not to respond
      module Gender
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::EmployeeUpdateParams::Gender)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :Male,
            VitableConnect::EmployeeUpdateParams::Gender::TaggedSymbol
          )
        FEMALE =
          T.let(
            :Female,
            VitableConnect::EmployeeUpdateParams::Gender::TaggedSymbol
          )
        TRANSGENDER =
          T.let(
            :Transgender,
            VitableConnect::EmployeeUpdateParams::Gender::TaggedSymbol
          )
        NON_BINARY =
          T.let(
            :"Non-binary",
            VitableConnect::EmployeeUpdateParams::Gender::TaggedSymbol
          )
        PREFER_NOT_TO_RESPOND =
          T.let(
            :"Prefer not to respond",
            VitableConnect::EmployeeUpdateParams::Gender::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitableConnect::EmployeeUpdateParams::Gender::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
