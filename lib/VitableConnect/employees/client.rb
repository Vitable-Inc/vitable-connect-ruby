# frozen_string_literal: true

module VitableConnect
  module Employees
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves detailed information for a specific employee by ID. Returns employee details including personal
      # information, employment status, classification and compensation-type effective dates, compensation type, and
      # payroll deductions from the most recent statement period. Deductions reflect a snapshot of the current period
      # and are replaced when a new statement is generated.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployeeID] :employee_id
      #
      # @example
      #   client.employees.get(employee_id: "empl_abc123def456")
      #
      # @return [VitableConnect::Types::EmployeeResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employees/#{URI.encode_uri_component(params[:employee_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployeeResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates employee personal, contact, address, and employment fields. This endpoint currently supports email,
      # phone, gender, address, employee_class, start_date, and compensation_type. effective_date is required and
      # applies to employee_class and compensation_type when those fields are included in the request.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Employees::Types::PatchedUpdateEmployeeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployeeID] :employee_id
      #
      # @example
      #   client.employees.update(
      #     employee_id: "empl_abc123def456",
      #     employee_class: "Full Time",
      #     start_date: "2023-01-15",
      #     compensation_type: "Salary",
      #     effective_date: "2023-03-01"
      #   )
      #
      # @return [VitableConnect::Types::EmployeeResponse]
      def update(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Employees::Types::PatchedUpdateEmployeeRequest.new(params).to_h
        non_body_param_names = %w[employee_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/employees/#{URI.encode_uri_component(params[:employee_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployeeResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a paginated list of benefit enrollments for an employee.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployeeID] :employee_id
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      #
      # @example
      #   client.employees.list_enrollments(
      #     employee_id: "empl_abc123def456",
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::EnrollmentListResponse]
      def list_enrollments(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)

        VitableConnect::Internal::OffsetItemIterator.new(
          initial_page: query_params["page"],
          item_field: :data,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["page"] = next_page
          request = VitableConnect::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/employees/#{URI.encode_uri_component(params[:employee_id].to_s)}/enrollments",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise VitableConnect::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = VitableConnect::Types::EnrollmentListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
