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
      #
      # @example
      #   client.members.get(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}",
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
      #
      # @example
      #   client.members.list_dependents(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberDependentsResponse]
      def list_dependents(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/dependents",
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
      #
      # @example
      #   client.members.list_employments(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberEmploymentsResponse]
      def list_employments(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/employments",
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
      #
      # @example
      #   client.members.list_enrollments(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberEnrollmentsResponse]
      def list_enrollments(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/enrollments",
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
      #
      # @example
      #   client.members.get_household(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::HouseholdMembersResponse]
      def get_household(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/household",
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
      #
      # @example
      #   client.members.list_id_cards(member_id: "mbr_abc123def456")
      #
      # @return [VitableConnect::Types::MemberDigitalBenefitCardsResponse]
      def list_id_cards(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/members/#{URI.encode_uri_component(params[:member_id].to_s)}/id-cards",
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
