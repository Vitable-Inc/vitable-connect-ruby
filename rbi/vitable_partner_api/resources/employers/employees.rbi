# typed: strong

module VitablePartnerAPI
  module Resources
    class Employers
      class Employees
        # Creates a new Employee for an Employer. Only the create Employee endpoint allows
        # specifying the SSN.
        sig do
          params(
            id: String,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            start_date: Date,
            gender:
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::OrSymbol,
            sex:
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::OrSymbol,
            ssn: String,
            suffix: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(VitablePartnerAPI::Employee)
        end
        def create(
          # Employer ID (prefixed with empr\_)
          id,
          date_of_birth:,
          first_name:,
          last_name:,
          start_date:,
          gender: nil,
          sex: nil,
          # Social Security Number (only allowed on create)
          ssn: nil,
          suffix: nil,
          request_options: {}
        )
        end

        # Lists all Employees for an Employer.
        sig do
          params(
            id: String,
            limit: Integer,
            offset: Integer,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(VitablePartnerAPI::Models::Employers::EmployeeListResponse)
        end
        def list(
          # Employer ID (prefixed with empr\_)
          id,
          # Number of results to return
          limit: nil,
          # Number of results to skip
          offset: nil,
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
