# typed: strong

module VitableConnect
  module Models
    module Employers
      class EmployeeCreateParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employers::EmployeeCreateParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Filter by employer ID
        sig { returns(String) }
        attr_accessor :employer_id

        # Date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Email address
        sig { returns(String) }
        attr_accessor :email

        # Employee's legal first name
        sig { returns(String) }
        attr_accessor :first_name

        # Employee's legal last name
        sig { returns(String) }
        attr_accessor :last_name

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        sig { returns(VitableConnect::Employers::Sex::OrSymbol) }
        attr_accessor :sex

        # Social Security Number (XXX-XX-XXXX or XXXXXXXXX). Only accepted on create.
        sig { returns(String) }
        attr_accessor :ssn

        # Employment start/hire date
        sig { returns(Date) }
        attr_accessor :start_date

        # Employee's residential address
        sig do
          returns(
            T.nilable(VitableConnect::Employers::EmployeeCreateParams::Address)
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                VitableConnect::Employers::EmployeeCreateParams::Address::OrHash
              )
          ).void
        end
        attr_writer :address

        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        sig do
          returns(T.nilable(VitableConnect::Employers::EmployeeClass::OrSymbol))
        end
        attr_accessor :employee_class

        # Gender identity
        sig { returns(T.nilable(String)) }
        attr_accessor :gender

        # Phone number
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # Name suffix (Jr., Sr., III)
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        sig do
          params(
            employer_id: String,
            date_of_birth: Date,
            email: String,
            first_name: String,
            last_name: String,
            sex: VitableConnect::Employers::Sex::OrSymbol,
            ssn: String,
            start_date: Date,
            address:
              T.nilable(
                VitableConnect::Employers::EmployeeCreateParams::Address::OrHash
              ),
            employee_class:
              T.nilable(VitableConnect::Employers::EmployeeClass::OrSymbol),
            gender: T.nilable(String),
            phone: T.nilable(String),
            suffix: T.nilable(String),
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by employer ID
          employer_id:,
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Email address
          email:,
          # Employee's legal first name
          first_name:,
          # Employee's legal last name
          last_name:,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex:,
          # Social Security Number (XXX-XX-XXXX or XXXXXXXXX). Only accepted on create.
          ssn:,
          # Employment start/hire date
          start_date:,
          # Employee's residential address
          address: nil,
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
          # Name suffix (Jr., Sr., III)
          suffix: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              employer_id: String,
              date_of_birth: Date,
              email: String,
              first_name: String,
              last_name: String,
              sex: VitableConnect::Employers::Sex::OrSymbol,
              ssn: String,
              start_date: Date,
              address:
                T.nilable(
                  VitableConnect::Employers::EmployeeCreateParams::Address
                ),
              employee_class:
                T.nilable(VitableConnect::Employers::EmployeeClass::OrSymbol),
              gender: T.nilable(String),
              phone: T.nilable(String),
              suffix: T.nilable(String),
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
                VitableConnect::Employers::EmployeeCreateParams::Address,
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
end
