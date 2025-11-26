# typed: strong

module VitablePartnerAPI
  module Resources
    class Employees
      class Dependents
        # Creates a new Dependent for a specific Employee for an Employer.
        sig do
          params(
            id: String,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            relationship:
              VitablePartnerAPI::CreateDependentRequest::Relationship::OrSymbol,
            gender: VitablePartnerAPI::CreateDependentRequest::Gender::OrSymbol,
            sex: VitablePartnerAPI::CreateDependentRequest::Sex::OrSymbol,
            suffix: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(VitablePartnerAPI::Dependent)
        end
        def create(
          # Employee ID (prefixed with empl\_)
          id,
          date_of_birth:,
          first_name:,
          last_name:,
          relationship:,
          gender: nil,
          sex: nil,
          suffix: nil,
          request_options: {}
        )
        end

        # Lists all existing Dependents for a specific Employee for an Employer.
        sig do
          params(
            id: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(VitablePartnerAPI::Models::Employees::DependentListResponse)
        end
        def list(
          # Employee ID (prefixed with empl\_)
          id,
          request_options: {}
        )
        end

        # @api private
        sig do
          params(client: VitablePartnerAPI::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
