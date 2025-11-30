# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Employees
      class Enrollments
        # Retrieves a paginated list of benefit enrollments for an employee. Enrollments
        # have statuses: 'pending' (in enrollment period), 'enrolled' (active coverage),
        # or 'inactive' (terminated, expired, or unanswered). Filter by status, plan year,
        # or coverage year.
        #
        # @overload list(employee_id, coverage_effective_start_year: nil, limit: nil, page: nil, plan_year: nil, status: nil, request_options: {})
        #
        # @param employee_id [String] Unique employee identifier (empl\_\*)
        #
        # @param coverage_effective_start_year [Integer] Filter by coverage year
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param plan_year [Integer] Filter by plan year start (YYYY)
        #
        # @param status [Symbol, VitableConnectAPI::Models::Employees::EnrollmentStatus] Filter by enrollment status
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<VitableConnectAPI::Models::Enrollment>]
        #
        # @see VitableConnectAPI::Models::Employees::EnrollmentListParams
        def list(employee_id, params = {})
          parsed, options = VitableConnectAPI::Employees::EnrollmentListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/employees/%1$s/enrollments", employee_id],
            query: parsed,
            model: VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment],
            options: options
          )
        end

        # Completes the benefits election process for all pending enrollments for an
        # employee. Processes enrollment decisions: which benefits to enroll/waive, plan
        # selections, and dependent coverage. Pending enrollments transition to enrolled
        # or waived status based on elections.
        #
        # @overload submit_elections(employee_id, elections:, request_options: {})
        #
        # @param employee_id [String] Unique employee identifier (empl\_\*)
        #
        # @param elections [Array<VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams::Election>] List of enrollment elections
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<VitableConnectAPI::Models::Enrollment>]
        #
        # @see VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsParams
        def submit_elections(employee_id, params)
          parsed, options = VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/employees/%1$s/enrollments/elect", employee_id],
            body: parsed,
            model: VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment],
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
