# typed: strong

module VitableConnect
  module Models
    class Employee < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Employee, VitableConnect::Internal::AnyHash)
        end

      # Unique employee identifier with 'empl\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # Whether the employee is currently active
      sig { returns(T::Boolean) }
      attr_accessor :active_in

      # Timestamp when the employee was created
      sig { returns(Time) }
      attr_accessor :created_at

      # ID of the employer this employee works for (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # Nested member entity containing personal identity information.
      #
      # Matches MemberEntity from account module domain.
      sig { returns(VitableConnect::Employee::Member) }
      attr_reader :member

      sig { params(member: VitableConnect::Employee::Member::OrHash).void }
      attr_writer :member

      # Employee's start/hire date with the employer
      sig { returns(Date) }
      attr_accessor :start_date

      # Timestamp when the employee was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Nested address for employee.
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
      sig do
        returns(
          T.nilable(VitableConnect::Employers::EmployeeClass::TaggedSymbol)
        )
      end
      attr_accessor :employee_class

      # Employee's termination date, if terminated
      sig { returns(T.nilable(Date)) }
      attr_accessor :termination_date

      # Serializer for Employee entity in public API responses.
      #
      # Note: Employee is in the company module but exposed via account public API.
      # Contains nested MemberEntity with personal identity information.
      sig do
        params(
          id: String,
          active_in: T::Boolean,
          created_at: Time,
          employer_id: String,
          member: VitableConnect::Employee::Member::OrHash,
          start_date: Date,
          updated_at: Time,
          address: T.nilable(VitableConnect::Employee::Address::OrHash),
          employee_class:
            T.nilable(VitableConnect::Employers::EmployeeClass::OrSymbol),
          termination_date: T.nilable(Date)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employee identifier with 'empl\_' prefix
        id:,
        # Whether the employee is currently active
        active_in:,
        # Timestamp when the employee was created
        created_at:,
        # ID of the employer this employee works for (empr\_\*)
        employer_id:,
        # Nested member entity containing personal identity information.
        #
        # Matches MemberEntity from account module domain.
        member:,
        # Employee's start/hire date with the employer
        start_date:,
        # Timestamp when the employee was last updated
        updated_at:,
        # Nested address for employee.
        address: nil,
        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        employee_class: nil,
        # Employee's termination date, if terminated
        termination_date: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active_in: T::Boolean,
            created_at: Time,
            employer_id: String,
            member: VitableConnect::Employee::Member,
            start_date: Date,
            updated_at: Time,
            address: T.nilable(VitableConnect::Employee::Address),
            employee_class:
              T.nilable(VitableConnect::Employers::EmployeeClass::TaggedSymbol),
            termination_date: T.nilable(Date)
          }
        )
      end
      def to_hash
      end

      class Member < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employee::Member,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique member identifier with 'mbr\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # Member's date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Member's legal first name
        sig { returns(String) }
        attr_accessor :first_name

        # Member's legal last name
        sig { returns(String) }
        attr_accessor :last_name

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        sig { returns(VitableConnect::Employers::Sex::TaggedSymbol) }
        attr_accessor :sex

        # Email address for communications
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # Gender identity, if provided
        sig { returns(T.nilable(String)) }
        attr_accessor :gender

        # Phone number
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # Name suffix (e.g., Jr., Sr., III)
        sig { returns(T.nilable(String)) }
        attr_accessor :suffix

        # Nested member entity containing personal identity information.
        #
        # Matches MemberEntity from account module domain.
        sig do
          params(
            id: String,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            sex: VitableConnect::Employers::Sex::OrSymbol,
            email: T.nilable(String),
            gender: T.nilable(String),
            phone: T.nilable(String),
            suffix: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique member identifier with 'mbr\_' prefix
          id:,
          # Member's date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Member's legal first name
          first_name:,
          # Member's legal last name
          last_name:,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex:,
          # Email address for communications
          email: nil,
          # Gender identity, if provided
          gender: nil,
          # Phone number
          phone: nil,
          # Name suffix (e.g., Jr., Sr., III)
          suffix: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              date_of_birth: Date,
              first_name: String,
              last_name: String,
              sex: VitableConnect::Employers::Sex::TaggedSymbol,
              email: T.nilable(String),
              gender: T.nilable(String),
              phone: T.nilable(String),
              suffix: T.nilable(String)
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

        # Nested address for employee.
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
