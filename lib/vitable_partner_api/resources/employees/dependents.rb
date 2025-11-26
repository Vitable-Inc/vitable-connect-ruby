# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Employees
      class Dependents
        # Creates a new Dependent for a specific Employee for an Employer.
        #
        # @overload create(id, date_of_birth:, first_name:, last_name:, relationship:, gender: nil, sex: nil, suffix: nil, request_options: {})
        #
        # @param id [String] Employee ID (prefixed with empl\_)
        #
        # @param date_of_birth [Date]
        #
        # @param first_name [String]
        #
        # @param last_name [String]
        #
        # @param relationship [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Relationship]
        #
        # @param gender [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Gender]
        #
        # @param sex [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Sex]
        #
        # @param suffix [String]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Dependent]
        #
        # @see VitablePartnerAPI::Models::Employees::DependentCreateParams
        def create(id, params)
          parsed, options = VitablePartnerAPI::Employees::DependentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["employees/%1$s/dependents", id],
            body: parsed,
            model: VitablePartnerAPI::Dependent,
            options: options
          )
        end

        # Lists all existing Dependents for a specific Employee for an Employer.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] Employee ID (prefixed with empl\_)
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Employees::DependentListResponse]
        #
        # @see VitablePartnerAPI::Models::Employees::DependentListParams
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["employees/%1$s/dependents", id],
            model: VitablePartnerAPI::Models::Employees::DependentListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [VitablePartnerAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
