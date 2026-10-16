# frozen_string_literal: true

module VitableConnect
  module Employers
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns the caller's employer book — every employer with its computed columns (enrollment-rate summary,
      # benefit-family tags, HRIS connection, benefit-lifecycle stage) merged with the employer's flat CRM fields (legal
      # name, EIN, contact, address, timestamps). The book is derived from the authenticated principal: one
      # organization's employers, or every organization's for a caller whose reach is not a single organization.
      # Supports search by display name, legal name, or exact EIN, employer id or contact email,
      # benefit-family/lifecycle/HRIS filters, and page/limit pagination.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::BenefitFamilyParamItem, nil] :benefit_family
      # @option params [VitableConnect::Types::BenefitLifecycleStageItem, nil] :benefit_lifecycle_stage
      # @option params [String, nil] :hris_provider
      # @option params [VitableConnect::Types::HrisStatusItem, nil] :hris_status
      # @option params [Boolean, nil] :include_cancelled
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :search
      #
      # @example
      #   client.employers.list(
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::OrganizationEmployerListResponse]
      def list(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["benefit_family"] = params[:benefit_family] if params.key?(:benefit_family)
        query_params["benefit_lifecycle_stage"] = params[:benefit_lifecycle_stage] if params.key?(:benefit_lifecycle_stage)
        query_params["hris_provider"] = params[:hris_provider] if params.key?(:hris_provider)
        query_params["hris_status"] = params[:hris_status] if params.key?(:hris_status)
        query_params["include_cancelled"] = params[:include_cancelled] if params.key?(:include_cancelled)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["search"] = params[:search] if params.key?(:search)

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
            path: "v1/employers",
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
            parsed_response = VitableConnect::Types::OrganizationEmployerListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates a new employer for the authenticated organization. Requires employer name, legal name, EIN, email, and
      # address information. Returns the created employer with its assigned ID.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Employers::Types::CreateEmployerRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.employers.create(
      #     name: "NewCo Industries",
      #     legal_name: "NewCo Industries LLC",
      #     ein: "12-3456789",
      #     email: "hr@newco.com",
      #     address: {
      #       address_line1: "789 Business Blvd",
      #       address_line2: "Floor 5",
      #       city: "Seattle",
      #       state: "WA",
      #       zipcode: "98101"
      #     },
      #     phone_number: "2065550100",
      #     reference_id: "partner-emp-001"
      #   )
      #
      # @return [VitableConnect::Types::EmployerResponse]
      def create(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/employers",
          body: VitableConnect::Employers::Types::CreateEmployerRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployerResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves detailed information for a specific employer by ID. The employer must belong to the authenticated
      # organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.get(employer_id: "empr_abc123def456")
      #
      # @return [VitableConnect::Types::EmployerResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployerResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an existing employer. All fields are optional — only provided fields are updated. PO Box addresses are
      # rejected.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Employers::Types::UpdateEmployerRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.update(employer_id: "empr_abc123def456")
      #
      # @return [VitableConnect::Types::EmployerResponse]
      def update(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Employers::Types::UpdateEmployerRequest.new(params).to_h
        non_body_param_names = %w[employer_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}",
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
          VitableConnect::Types::EmployerResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the employer's benefit plan years (all years, or one when `year` is given), each with its benefits,
      # offered states, benefit families, and the year-level enrollment roll-up. The caller must be authorized for the
      # employer; an unknown or unauthorized employer returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.list_benefit_plan_years(employer_id: "empr_abc123def456")
      #
      # @return [VitableConnect::Types::EmployerBenefitPlanYearsListResponse]
      def list_benefit_plan_years(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/benefit-plan-years",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployerBenefitPlanYearsListResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns one benefit plan year in full — its benefit details plus the per-benefit enrollment rate and SPD link —
      # addressed by its `benefit_plan_year_id`. The caller must be authorized for the employer; an unknown or
      # unauthorized plan year returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      # @option params [VitableConnect::Types::BenefitPlanYearID] :benefit_plan_year_id
      #
      # @example
      #   client.employers.get_benefit_plan_year(
      #     employer_id: "empr_abc123def456",
      #     benefit_plan_year_id: "plyr_abc123def456"
      #   )
      #
      # @return [VitableConnect::Types::EmployerBenefitPlanYearResponse]
      def get_benefit_plan_year(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/benefit-plan-years/#{URI.encode_uri_component(params[:benefit_plan_year_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployerBenefitPlanYearResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a paginated list of every member with an enrollment in one of an employer's plan years, any election
      # status: what they elected, where their coverage stands, dependent count, carrier, plan, tier, and the plan's
      # total monthly cost. The caller must be authorized for the employer `empr_<...>`; an unknown or unauthorized
      # employer, or an unknown plan year `plyr_<...>`, returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      # @option params [VitableConnect::Types::BenefitPlanYearID] :benefit_plan_year_id
      # @option params [VitableConnect::Types::ElectionStatusItem, nil] :election_status
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :search
      #
      # @example
      #   client.employers.list_benefit_plan_year_enrollments(
      #     employer_id: "empr_abc123def456",
      #     benefit_plan_year_id: "plyr_abc123def456",
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::PlanYearEnrollmentListResponse]
      def list_benefit_plan_year_enrollments(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["election_status"] = params[:election_status] if params.key?(:election_status)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["search"] = params[:search] if params.key?(:search)

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
            path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/benefit-plan-years/#{URI.encode_uri_component(params[:benefit_plan_year_id].to_s)}/enrollments",
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
            parsed_response = VitableConnect::Types::PlanYearEnrollmentListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Submits a census sync payload for the specified employer. The employees in the payload will be queued for
      # processing. Returns an accepted response with the timestamp of acceptance.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Employers::Types::CensusSyncRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.submit_census_sync(
      #     employer_id: "empr_abc123def456",
      #     employees: [{
      #       reference_id: "EMP-001",
      #       first_name: "Jane",
      #       last_name: "Doe",
      #       date_of_birth: "1990-05-15",
      #       email: "jane.doe@acme.com",
      #       phone: "4155550100",
      #       address: {
      #         address_line1: "123 Main Street",
      #         address_line2: "Apt 4B",
      #         city: "San Francisco",
      #         state: "CA",
      #         zipcode: "94102"
      #       },
      #       start_date: "2024-01-15",
      #       employee_class: "Full Time",
      #       compensation_type: "Salary"
      #     }, {
      #       first_name: "John",
      #       last_name: "Smith",
      #       date_of_birth: "1985-11-20",
      #       email: "john.smith@acme.com",
      #       phone: "4155550101",
      #       start_date: "2024-03-01",
      #       employee_class: "Part Time",
      #       compensation_type: "Hourly"
      #     }]
      #   )
      #
      # @return [VitableConnect::Types::CensusSyncDetailResponse]
      def submit_census_sync(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Employers::Types::CensusSyncRequest.new(params).to_h
        non_body_param_names = %w[employer_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/census-sync",
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
          VitableConnect::Types::CensusSyncDetailResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a paginated list of employees for a specific employer. The caller must be authorized for the employer;
      # an unknown or unauthorized employer returns 404. Results are paginated using page and limit parameters and can
      # be narrowed with a case-insensitive `search` (first name, last name, or email) and an `employment_status` filter
      # (active or terminated). Each employee includes payroll deductions from the most recent statement period. When a
      # new deduction statement is generated, previous period deductions are replaced.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      # @option params [VitableConnect::Types::EmployeeStatus, nil] :employment_status
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :search
      #
      # @example
      #   client.employers.list_employees(
      #     employer_id: "empr_abc123def456",
      #     limit: 20,
      #     page: 1,
      #     search: "jane"
      #   )
      #
      # @return [VitableConnect::Types::EmployeeListResponse]
      def list_employees(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["employment_status"] = params[:employment_status] if params.key?(:employment_status)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["search"] = params[:search] if params.key?(:search)

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
            path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/employees",
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
            parsed_response = VitableConnect::Types::EmployeeListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Returns the employer's HRIS connection — provider, status, last sync, and synced row count — or null when the
      # employer has no integration. The caller must be authorized for the employer; an unknown or unauthorized employer
      # returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.get_hris(employer_id: "empr_abc123def456")
      #
      # @return [VitableConnect::Types::EmployerHrisResponse]
      def get_hris(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/hris",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployerHrisResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a cursor-paginated page of the employer's billing invoices, newest first. Pass the `next_offset` from a
      # previous page as `offset` to fetch the next page. The caller must be authorized for the employer; an unknown or
      # unauthorized employer returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :offset
      #
      # @example
      #   client.employers.list_invoices(
      #     employer_id: "empr_abc123def456",
      #     limit: 20
      #   )
      #
      # @return [VitableConnect::Types::EmployerInvoicesListResponse]
      def list_invoices(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/invoices",
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
          VitableConnect::Types::EmployerInvoicesListResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the time-limited PDF download link for a single invoice belonging to the employer's billing customer.
      # `invoice_id` is the external Chargebee id (not a prefixed UUID). The caller must be authorized for the employer;
      # an unknown or unauthorized employer or invoice returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      # @option params [VitableConnect::Types::InvoiceID] :invoice_id
      #
      # @example
      #   client.employers.get_invoice_pdf(
      #     employer_id: "empr_abc123def456",
      #     invoice_id: "INV-00042"
      #   )
      #
      # @return [VitableConnect::Types::EmployerInvoicePdfResponse]
      def get_invoice_pdf(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/invoices/#{URI.encode_uri_component(params[:invoice_id].to_s)}/pdf",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EmployerInvoicePdfResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Return whether the employer has submitted payroll access setup.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.get_payroll_access_setup(employer_id: "empr_abc123def456")
      #
      # @return [VitableConnect::Types::PayrollAccessSetupStatusResponse]
      def get_payroll_access_setup(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/payroll-access-setup",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::PayrollAccessSetupStatusResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Submit the employer's payroll access setup answers.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Employers::Types::SubmitPayrollAccessSetupRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.submit_payroll_access_setup(
      #     employer_id: "empr_abc123def456",
      #     employees_in_payroll_acknowledged: true,
      #     payroll_data_impacts_eligibility_acknowledged: true,
      #     classifications_accurate: true,
      #     all_benefit_eligible_employees_present: true,
      #     is_controlled_group: true,
      #     access_method: "SELF_SETUP",
      #     has_additional_payroll_system: true
      #   )
      #
      # @return [VitableConnect::Types::PayrollAccessSetupStatusResponse]
      def submit_payroll_access_setup(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Employers::Types::SubmitPayrollAccessSetupRequest.new(params).to_h
        non_body_param_names = %w[employer_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/payroll-access-setup",
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
          VitableConnect::Types::PayrollAccessSetupStatusResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a paginated list of the employer's payroll-deduction statements, newest period first, each with its
      # period, generation date, distinct employee count, total deduction, change-file link, and deduction frequency.
      # Statements superseded by a later correction are excluded. The caller must be authorized for the employer; an
      # unknown or unauthorized employer returns 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      #
      # @example
      #   client.employers.list_payroll_deduction_statements(
      #     employer_id: "empr_abc123def456",
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::EmployerPayrollDeductionStatementListResponse]
      def list_payroll_deduction_statements(request_options: {}, **params)
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
            path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/payroll-deduction-statements",
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
            parsed_response = VitableConnect::Types::EmployerPayrollDeductionStatementListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Provision and return the employer's payroll integration email.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.ensure_payroll_integration_email(employer_id: "empr_abc123def456")
      #
      # @return [VitableConnect::Types::PayrollIntegrationEmailResponse]
      def ensure_payroll_integration_email(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/payroll-integration-email",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::PayrollIntegrationEmailResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates configuration settings for a specific employer. The employer must belong to the authenticated
      # organization.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Employers::Types::UpdateEmployerSettingsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EmployerID] :employer_id
      #
      # @example
      #   client.employers.update_settings(
      #     employer_id: "empr_abc123def456",
      #     pay_frequency: "bi_weekly"
      #   )
      #
      # @return [VitableConnect::Types::EmployerSettingsResponse]
      def update_settings(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Employers::Types::UpdateEmployerSettingsRequest.new(params).to_h
        non_body_param_names = %w[employer_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v1/employers/#{URI.encode_uri_component(params[:employer_id].to_s)}/settings",
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
          VitableConnect::Types::EmployerSettingsResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns the distinct HRIS/payroll providers across the same book `GET /v1/employers` returns, sorted for
      # display. Use these as the values for the employers list's `hris_provider` filter — filter on `provider`, show
      # `provider_label`. The stored providers are free text, so they cannot be enumerated in advance.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.employers.list_hris_providers
      #
      # @return [VitableConnect::Types::OrganizationHrisProvidersResponse]
      def list_hris_providers(request_options: {}, **_params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/employers/hris-providers",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::OrganizationHrisProvidersResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
