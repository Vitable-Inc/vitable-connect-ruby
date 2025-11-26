# typed: strong

module VitablePartnerAPI
  module Resources
    class Employers
      sig { returns(VitablePartnerAPI::Resources::Employers::Employees) }
      attr_reader :employees

      # Creates a new Employer for an Organization.
      sig do
        params(
          legal_name: String,
          name: String,
          active: T::Boolean,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Employer)
      end
      def create(legal_name:, name:, active: nil, request_options: {})
      end

      # Gets a specific Employer an Organization has access to.
      sig do
        params(
          id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Employer)
      end
      def retrieve(
        # Employer ID (prefixed with empr\_)
        id,
        request_options: {}
      )
      end

      # Updates a specific Employer an Organization has access to.
      sig do
        params(
          id: String,
          active: T::Boolean,
          legal_name: String,
          name: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Employer)
      end
      def update(
        # Employer ID (prefixed with empr\_)
        id,
        active: nil,
        legal_name: nil,
        name: nil,
        request_options: {}
      )
      end

      # Lists all Employers an Organization has access to.
      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Models::EmployerListResponse)
      end
      def list(
        # Number of results to return
        limit: nil,
        # Number of results to skip
        offset: nil,
        request_options: {}
      )
      end

      # Creates a new Benefit Eligibility Policy for a specific Employer an Organization
      # has access to.
      sig do
        params(
          id: String,
          classification:
            VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::OrSymbol,
          waiting_period:
            VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::OrSymbol,
          policy_to_replace_id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::EligibilityPolicy)
      end
      def create_eligibility_policy(
        # Path param: Employer ID (prefixed with empr\_)
        id,
        # Body param:
        classification:,
        # Body param:
        waiting_period:,
        # Query param: ID of the policy to replace
        policy_to_replace_id: nil,
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
