# frozen_string_literal: true

module VitableConnect
  module Members
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves a member's profile by ID — identity, demographics, address, contact details, tobacco status, and
      # profile status. Access is scoped to the authenticated principal; a member not visible to the caller returns a
      # 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.get(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::MemberResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a member's active legal dependents — name, relationship, date of birth, age, and sex at birth. Access is
      # scoped to the authenticated principal; a member not visible to the caller returns a 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.list_dependents(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberDependentsResponse]
      def list_dependents(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/dependents",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::MemberDependentsResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Saves a dependent (spouse or child) for a member. Saving does not enroll the dependent or change the member's
      # coverage or coverage tier. If the member already has an active dependent matching this person, that relationship
      # is reused and returned with a 200 and `created: false`; otherwise a new one is created with a 201 and `created:
      # true`. In both cases the dependent's address is set to the one supplied; other details of a person Vitable
      # already has on file are not changed. When a new dependent is created at exactly the member's address, Vitable
      # also adds them to the member's household where it can; this never fails the request. The returned IDs identify
      # the saved dependent. Social Security numbers are not accepted, and a body with an `ssn` field returns a 400. The
      # caller must have write access to the target member, and API access tokens cannot save dependents. A member not
      # visible to the caller returns a 404 before the body is validated. Business-rule failures return a 422 with
      # `child_over_max_age` (a child must be under 26), `duplicate_active_spouse` (the member already has a different
      # active spouse), `same_member`, `member_creation_failed`, or `legal_dependent_creation_failed`.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Members::Types::CreateMemberDependentRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.create_dependent(
      #     member_id: "mbr_abc123def456",
      #     first_name: "Sam",
      #     last_name: "Doe",
      #     date_of_birth: "2015-06-01",
      #     sex_at_birth: "Male",
      #     relationship: "Child",
      #     address: {
      #       address_line1: "123 Main St",
      #       city: "Detroit",
      #       state: "MI",
      #       zipcode: "48201"
      #     }
      #   )
      #
      # @return [VitableConnect::Types::SavedMemberDependentResponse]
      def create_dependent(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Members::Types::CreateMemberDependentRequest.new(params).to_h
        non_body_param_names = %w[member_id X-Vitable-Organization]
        body = request_data.except(*non_body_param_names)

        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/dependents",
          headers: headers,
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
          VitableConnect::Types::SavedMemberDependentResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a member's employment across every employer — the same employee record shape as the employer's employees
      # list, plus the employer name. For an organization caller the rows are scoped to companies in that organization's
      # book; a member (self/household) or Vitable Admin sees all employments. A member not visible to the caller
      # returns a 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.list_employments(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberEmploymentsResponse]
      def list_employments(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/employments",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::MemberEmploymentsResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a member's benefit enrollments across every employer — benefit type and product, employer, carrier, plan,
      # tier, employee deduction, employer contribution and total premium, the individual enrollment coverage boundary
      # (`coverage_end`), the separate pre-effective cancellation boundary (`cancelled_date`), and the distinct benefit
      # plan-year boundary (`plan_year_coverage_end`) used to determine whether the plan year itself has ended, the date
      # the enrollment record was created (`issued_date`, the value Ops labels Issued on, reported for every row
      # whatever the member answered), the window the member could answer in -- which never opens before the enrollment
      # was issued, so a row issued mid-open-enrollment starts its window on its issue date -- whether a qualifying life
      # event would currently be required for reissue under the product/open-enrollment rule, enrollment/open-enrollment
      # window, and two statuses: `election_status` (what the member answered) and `policy_status` (what became of their
      # coverage, null unless they enrolled). Every row includes a stable enrollment ID and the exact employer and
      # benefit plan-year IDs used to fetch that row's plan-year detail. The full list is returned across all states so
      # the client derives active plans (effective and upcoming) and the enrollment history from those per-row statuses.
      # For an organization caller the rows are scoped to companies in that organization's book; a member
      # (self/household) or Vitable Admin sees all enrollments. A member not visible to the caller returns a 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.list_enrollments(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberEnrollmentsResponse]
      def list_enrollments(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/enrollments",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::MemberEnrollmentsResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a member's household as a per-participant table — the account holder plus each active household member,
      # with name, relationship, member type, date of birth, and household-admin flag. Access is scoped to the
      # authenticated principal; a member not visible to the caller (or with no household) returns a 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.get_household(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::HouseholdMembersResponse]
      def get_household(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/household",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::HouseholdMembersResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a member's benefit ID cards — card type (medical, dental, vision, or rx), employer, plan, provider
      # network, claims payer, carrier contact details, and the disclaimers printed on the card. Medical, dental and
      # vision cards come from the member's active digital benefit cards; the rx card from the member's Ventegra
      # pharmacy benefit (omitted when the member has no free-medication coverage), which carries no plan, network, or
      # carrier details. Access is scoped to the authenticated principal, and an organization caller sees only cards
      # from employers in its book; a member not visible to the caller returns a 404.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.list_id_cards(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberDigitalBenefitCardsResponse]
      def list_id_cards(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/id-cards",
          headers: headers,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::MemberDigitalBenefitCardsResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists a member's qualifying life events, including events already used for another enrollment. Returns all
      # statuses by default; pass the status query param to filter to one (e.g. approved). Events are ordered newest
      # submission first with stable paging. Custom text is present only when submitted and is otherwise null. A member
      # not visible to the caller returns a 404. API keys and unbound access tokens have organization-wide access.
      # Employer-bound tokens require employment at the bound employer, and employee-bound tokens require the exact
      # employee-member relationship. Organization or scope mismatches return a 404 before pagination is validated.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::MemberID] :member_id
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [VitableConnect::Types::Status, nil] :status
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.list_qualifying_life_events(
      #     member_id: "mbr_abc123def456",
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::MemberQualifyingLifeEventListResponse]
      def list_qualifying_life_events(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["status"] = params[:status] if params.key?(:status)

        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

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
            path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/qualifying-life-events",
            headers: headers,
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
            parsed_response = VitableConnect::Types::MemberQualifyingLifeEventListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Retrieves a paginated list of the members in the authenticated organization's book — identity, contact details,
      # and address. The book covers members reached through an employer in the organization's book as well as members
      # of a group it owns. Supports free-text search (name, email, phone number, or exact member id).
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :search
      # @option params [String, nil] :vitable_organization
      #
      # @example
      #   client.members.list(
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::MemberListResponse]
      def list(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["search"] = params[:search] if params.key?(:search)

        headers = {}
        headers["X-Vitable-Organization"] = params[:vitable_organization] if params[:vitable_organization]

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
            path: "v2/members",
            headers: headers,
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
            parsed_response = VitableConnect::Types::MemberListResponse.load(response.body)
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
