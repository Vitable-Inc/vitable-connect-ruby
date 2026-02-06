# typed: strong

module VitableConnectAPI
  module Models
    class Dependent < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Dependent,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Unique dependent identifier with 'dpnd\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # Whether the dependent is currently active
      sig { returns(T::Boolean) }
      attr_accessor :active_in

      # Timestamp when the dependent was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Dependent's date of birth (YYYY-MM-DD)
      sig { returns(Date) }
      attr_accessor :date_of_birth

      # Dependent's legal first name
      sig { returns(String) }
      attr_accessor :first_name

      # Dependent's legal last name
      sig { returns(String) }
      attr_accessor :last_name

      # ID of the primary member/employee (mbr\_\*)
      sig { returns(String) }
      attr_accessor :member_id

      # - `Spouse` - Spouse
      # - `Child` - Child
      sig { returns(VitableConnectAPI::Members::Relationship::TaggedSymbol) }
      attr_accessor :relationship

      # - `Male` - Male
      # - `Female` - Female
      # - `Other` - Other
      # - `Unknown` - Unknown
      sig { returns(VitableConnectAPI::Sex::TaggedSymbol) }
      attr_accessor :sex

      # Timestamp when the dependent was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Gender identity, if provided
      sig { returns(T.nilable(String)) }
      attr_accessor :gender

      # Last 4 digits of SSN (masked)
      sig { returns(T.nilable(String)) }
      attr_accessor :ssn_last_four

      # Name suffix (e.g., Jr., Sr., III)
      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      # Serializer for Dependent entity in public API responses.
      #
      # Dependents are family members (spouse, children) who may be eligible for benefit
      # coverage through an employee.
      sig do
        params(
          id: String,
          active_in: T::Boolean,
          created_at: Time,
          date_of_birth: Date,
          first_name: String,
          last_name: String,
          member_id: String,
          relationship: VitableConnectAPI::Members::Relationship::OrSymbol,
          sex: VitableConnectAPI::Sex::OrSymbol,
          updated_at: Time,
          gender: T.nilable(String),
          ssn_last_four: T.nilable(String),
          suffix: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique dependent identifier with 'dpnd\_' prefix
        id:,
        # Whether the dependent is currently active
        active_in:,
        # Timestamp when the dependent was created
        created_at:,
        # Dependent's date of birth (YYYY-MM-DD)
        date_of_birth:,
        # Dependent's legal first name
        first_name:,
        # Dependent's legal last name
        last_name:,
        # ID of the primary member/employee (mbr\_\*)
        member_id:,
        # - `Spouse` - Spouse
        # - `Child` - Child
        relationship:,
        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        sex:,
        # Timestamp when the dependent was last updated
        updated_at:,
        # Gender identity, if provided
        gender: nil,
        # Last 4 digits of SSN (masked)
        ssn_last_four: nil,
        # Name suffix (e.g., Jr., Sr., III)
        suffix: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active_in: T::Boolean,
            created_at: Time,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            member_id: String,
            relationship:
              VitableConnectAPI::Members::Relationship::TaggedSymbol,
            sex: VitableConnectAPI::Sex::TaggedSymbol,
            updated_at: Time,
            gender: T.nilable(String),
            ssn_last_four: T.nilable(String),
            suffix: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
