# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Employees
      class Enrollments
        # Gets the Enrollments (pending, enrolled, or inactive) for a specific Employee
        # with additional filters.
        #
        # @overload list(id, status: nil, request_options: {})
        #
        # @param id [String] Employee ID (prefixed with empl\_)
        #
        # @param status [Symbol, VitablePartnerAPI::Models::Employees::EnrollmentListParams::Status]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Employees::EnrollmentListResponse]
        #
        # @see VitablePartnerAPI::Models::Employees::EnrollmentListParams
        def list(id, params = {})
          parsed, options = VitablePartnerAPI::Employees::EnrollmentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["employees/%1$s/enrollments", id],
            query: parsed,
            model: VitablePartnerAPI::Models::Employees::EnrollmentListResponse,
            options: options
          )
        end

        # Benefits election process of all pending enrollments. Consists of all pending
        # enrollments, whether enrolled/waived, and IDs of the dependents.
        #
        # @overload elect(id, elections:, request_options: {})
        #
        # @param id [String] Employee ID (prefixed with empl\_)
        #
        # @param elections [Array<VitablePartnerAPI::Models::ElectBenefitsRequest::Election>]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Employees::EnrollmentElectResponse]
        #
        # @see VitablePartnerAPI::Models::Employees::EnrollmentElectParams
        def elect(id, params)
          parsed, options = VitablePartnerAPI::Employees::EnrollmentElectParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["employees/%1$s/enrollments/elect", id],
            body: parsed,
            model: VitablePartnerAPI::Models::Employees::EnrollmentElectResponse,
            options: options
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
