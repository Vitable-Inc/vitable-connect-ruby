# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Members
      class Dependents
        # Some parameter documentations has been truncated, see
        # {VitableConnectAPI::Models::Members::DependentCreateParams} for more details.
        #
        # Creates a new dependent record for a member. Required: first name, last name,
        # date of birth, sex, and relationship type. SSN is optional but recommended for
        # coverage verification.
        #
        # @overload create(member_id, date_of_birth:, first_name:, last_name:, relationship:, sex:, gender: nil, ssn: nil, suffix: nil, request_options: {})
        #
        # @param member_id [String] Unique member identifier (mbr\_\*)
        #
        # @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        # @param first_name [String] Dependent's legal first name
        #
        # @param last_name [String] Dependent's legal last name
        #
        # @param relationship [Symbol, VitableConnectAPI::Models::Members::Relationship] - `Spouse` - Spouse
        #
        # @param sex [Symbol, VitableConnectAPI::Models::Sex] - `Male` - Male
        #
        # @param gender [String, nil] Gender identity
        #
        # @param ssn [String, nil] Social Security Number (optional, XXX-XX-XXXX or XXXXXXXXX)
        #
        # @param suffix [String, nil] Name suffix (Jr., Sr., III)
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnectAPI::Models::Members::DependentCreateResponse]
        #
        # @see VitableConnectAPI::Models::Members::DependentCreateParams
        def create(member_id, params)
          parsed, options = VitableConnectAPI::Members::DependentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/members/%1$s/dependents", member_id],
            body: parsed,
            model: VitableConnectAPI::Models::Members::DependentCreateResponse,
            options: options
          )
        end

        # Retrieves a paginated list of dependents for a specific member. Dependents
        # include spouses, children, and domestic partners who may be eligible for benefit
        # coverage.
        #
        # @overload list(member_id, active_in: nil, limit: nil, page: nil, relationship: nil, request_options: {})
        #
        # @param member_id [String] Unique member identifier (mbr\_\*)
        #
        # @param active_in [Boolean] Filter by active status
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param relationship [Symbol, VitableConnectAPI::Models::Members::Relationship] Filter by relationship type
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnectAPI::Models::Members::DependentListResponse]
        #
        # @see VitableConnectAPI::Models::Members::DependentListParams
        def list(member_id, params = {})
          parsed, options = VitableConnectAPI::Members::DependentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/members/%1$s/dependents", member_id],
            query: parsed,
            model: VitableConnectAPI::Models::Members::DependentListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [VitableConnectAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
