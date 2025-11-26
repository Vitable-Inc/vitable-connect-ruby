# typed: strong

module VitablePartnerAPI
  module Resources
    class Employees
      sig { returns(VitablePartnerAPI::Resources::Employees::Dependents) }
      attr_reader :dependents

      sig do
        returns(VitablePartnerAPI::Resources::Employees::QualifyingLifeEvents)
      end
      attr_reader :qualifying_life_events

      sig { returns(VitablePartnerAPI::Resources::Employees::Enrollments) }
      attr_reader :enrollments

      # Gets a specific Employee for an Employer.
      sig do
        params(
          id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Employee)
      end
      def retrieve(
        # Employee ID (prefixed with empl\_)
        id,
        request_options: {}
      )
      end

      # Updates a specific Employee for an Employer.
      sig do
        params(
          id: String,
          date_of_birth: Date,
          first_name: String,
          gender:
            VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::OrSymbol,
          last_name: String,
          sex:
            VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::OrSymbol,
          start_date: Date,
          suffix: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Employee)
      end
      def update(
        # Employee ID (prefixed with empl\_)
        id,
        date_of_birth: nil,
        first_name: nil,
        gender: nil,
        last_name: nil,
        sex: nil,
        start_date: nil,
        suffix: nil,
        request_options: {}
      )
      end

      # Terminates a specific Employee for an Employer.
      sig do
        params(
          id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).void
      end
      def terminate(
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
