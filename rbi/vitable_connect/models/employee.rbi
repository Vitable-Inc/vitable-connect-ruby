# typed: strong

module VitableConnect
  module Models
    class Employee < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Employee, VitableConnect::Internal::AnyHash)
        end

      # Timestamp when the employee was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Date of birth (YYYY-MM-DD)
      sig { returns(Date) }
      attr_accessor :date_of_birth

      # Email address
      sig { returns(String) }
      attr_accessor :email

      # Benefit enrollments for this employee
      sig { returns(T::Array[VitableConnect::Employee::Enrollment]) }
      attr_accessor :enrollments

      # Employee's legal first name
      sig { returns(String) }
      attr_accessor :first_name

      # Employee's legal last name
      sig { returns(String) }
      attr_accessor :last_name

      # Timestamp when the employee was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Employee's residential address
      sig { returns(T.nilable(VitableConnect::Employee::Address)) }
      attr_reader :address

      sig do
        params(
          address: T.nilable(VitableConnect::Employee::Address::OrHash)
        ).void
      end
      attr_writer :address

      # - `Full Time` - Full Time
      # - `Part Time` - Part Time
      # - `Temporary` - Temporary
      # - `Intern` - Intern
      # - `Seasonal` - Seasonal
      # - `Individual Contractor` - Individual Contractor
      sig { returns(T.nilable(VitableConnect::EmployeeClass::TaggedSymbol)) }
      attr_accessor :employee_class

      # Gender identity, if provided
      sig { returns(T.nilable(String)) }
      attr_accessor :gender

      # Employee's hire date with the employer
      sig { returns(T.nilable(Date)) }
      attr_accessor :hire_date

      # Phone number (10-digit US domestic string)
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # Partner-assigned reference ID for the employee
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      # Name suffix (e.g., Jr., Sr., III)
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      # Employee's termination date, if terminated
      sig { returns(T.nilable(Date)) }
      attr_accessor :termination_date

      # Unique employee identifier with 'empl\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # Unique member identifier with 'mbr\_' prefix
      sig { returns(String) }
      attr_accessor :member_id

      # Employee status (active or terminated)
      sig { returns(String) }
      attr_accessor :status

      sig do
        params(
          id: String,
          created_at: Time,
          date_of_birth: Date,
          email: String,
          enrollments: T::Array[VitableConnect::Employee::Enrollment::OrHash],
          first_name: String,
          last_name: String,
          member_id: String,
          status: String,
          updated_at: Time,
          address: T.nilable(VitableConnect::Employee::Address::OrHash),
          employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
          gender: T.nilable(String),
          hire_date: T.nilable(Date),
          phone: T.nilable(String),
          reference_id: T.nilable(String),
          suffix: T.nilable(String),
          termination_date: T.nilable(Date)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employee identifier with 'empl\_' prefix
        id:,
        # Timestamp when the employee was created
        created_at:,
        # Date of birth (YYYY-MM-DD)
        date_of_birth:,
        # Email address
        email:,
        # Benefit enrollments for this employee
        enrollments:,
        # Employee's legal first name
        first_name:,
        # Employee's legal last name
        last_name:,
        # Unique member identifier with 'mbr\_' prefix
        member_id:,
        # Employee status (active or terminated)
        status:,
        # Timestamp when the employee was last updated
        updated_at:,
        # Employee's residential address
        address: nil,
        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        employee_class: nil,
        # Gender identity, if provided
        gender: nil,
        # Employee's hire date with the employer
        hire_date: nil,
        # Phone number (10-digit US domestic string)
        phone: nil,
        # Partner-assigned reference ID for the employee
        reference_id: nil,
        # Name suffix (e.g., Jr., Sr., III)
        suffix: nil,
        # Employee's termination date, if terminated
        termination_date: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            date_of_birth: Date,
            email: String,
            enrollments: T::Array[VitableConnect::Employee::Enrollment],
            first_name: String,
            last_name: String,
            member_id: String,
            status: String,
            updated_at: Time,
            address: T.nilable(VitableConnect::Employee::Address),
            employee_class:
              T.nilable(VitableConnect::EmployeeClass::TaggedSymbol),
            gender: T.nilable(String),
            hire_date: T.nilable(Date),
            phone: T.nilable(String),
            reference_id: T.nilable(String),
            suffix: T.nilable(String),
            termination_date: T.nilable(Date)
          }
        )
      end
      def to_hash
      end

      class Enrollment < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employee::Enrollment,
              VitableConnect::Internal::AnyHash
            )
          end

        # - `pending` - Pending
        # - `enrolled` - Enrolled
        # - `waived` - Waived
        # - `inactive` - Inactive
        sig { returns(VitableConnect::EnrollmentStatus::TaggedSymbol) }
        attr_accessor :status

        # Timestamp when the enrollment decision was made
        sig { returns(T.nilable(Time)) }
        attr_accessor :answered_at

        # Unique enrollment identifier with 'enrl\_' prefix
        sig { returns(String) }
        attr_accessor :id

        sig do
          params(
            id: String,
            status: VitableConnect::EnrollmentStatus::OrSymbol,
            answered_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique enrollment identifier with 'enrl\_' prefix
          id:,
          # - `pending` - Pending
          # - `enrolled` - Enrolled
          # - `waived` - Waived
          # - `inactive` - Inactive
          status:,
          # Timestamp when the enrollment decision was made
          answered_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              status: VitableConnect::EnrollmentStatus::TaggedSymbol,
              answered_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end

      class Address < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employee::Address,
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

        # Employee's residential address
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
