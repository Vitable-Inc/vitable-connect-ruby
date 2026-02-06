# typed: strong

module VitableConnect
  module Resources
    class Members
      class Dependents
        # Creates a new dependent record for a member. Required: first name, last name,
        # date of birth, sex, and relationship type. SSN is optional but recommended for
        # coverage verification.
        sig do
          params(
            member_id: String,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            relationship: VitableConnect::Members::Relationship::OrSymbol,
            sex: VitableConnect::Employers::Sex::OrSymbol,
            gender: T.nilable(String),
            ssn: T.nilable(String),
            suffix: T.nilable(String),
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::DependentResponse)
        end
        def create(
          # Unique member identifier (mbr\_\*)
          member_id,
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Dependent's legal first name
          first_name:,
          # Dependent's legal last name
          last_name:,
          # - `Spouse` - Spouse
          # - `Child` - Child
          relationship:,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex:,
          # Gender identity
          gender: nil,
          # Social Security Number (optional, XXX-XX-XXXX or XXXXXXXXX)
          ssn: nil,
          # Name suffix (Jr., Sr., III)
          suffix: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of dependents for a specific member. Dependents
        # include spouses, children, and domestic partners who may be eligible for benefit
        # coverage.
        sig do
          params(
            member_id: String,
            active_in: T::Boolean,
            limit: Integer,
            page: Integer,
            relationship: VitableConnect::Members::Relationship::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Models::Members::DependentListResponse)
        end
        def list(
          # Unique member identifier (mbr\_\*)
          member_id,
          # Filter by active status
          active_in: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by relationship type
          relationship: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: VitableConnect::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
