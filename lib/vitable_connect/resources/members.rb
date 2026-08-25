# frozen_string_literal: true

module VitableConnect
  module Resources
    # Browse the members covered across your book and read a member's profile
    class Members
      # Retrieves a member's profile by ID — identity, demographics, address, contact
      # details, tobacco status, and profile status. Access is scoped to the
      # authenticated principal; a member not visible to the caller returns a 404.
      #
      # @overload retrieve(member_id, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::MemberRetrieveResponse]
      #
      # @see VitableConnect::Models::MemberRetrieveParams
      def retrieve(member_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/members/%1$s", member_id],
          model: VitableConnect::Models::MemberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Retrieves a paginated list of the members in the authenticated organization's
      # book — identity, contact details, and address. The book covers members reached
      # through an employer in the organization's book as well as members of a group it
      # owns. Supports free-text search (name, email, or exact member id).
      #
      # @overload list(limit: nil, page: nil, search: nil, request_options: {})
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param search [String] Case-insensitive search across member name and email; exact match on member id
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::MemberListResponse>]
      #
      # @see VitableConnect::Models::MemberListParams
      def list(params = {})
        parsed, options = VitableConnect::MemberListParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v2/members",
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Models::MemberListResponse,
          options: options
        )
      end

      # Lists a member's active legal dependents — name, relationship, date of birth,
      # age, and sex at birth. Access is scoped to the authenticated principal; a member
      # not visible to the caller returns a 404.
      #
      # @overload list_dependents(member_id, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::MemberListDependentsResponse]
      #
      # @see VitableConnect::Models::MemberListDependentsParams
      def list_dependents(member_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/members/%1$s/dependents", member_id],
          model: VitableConnect::Models::MemberListDependentsResponse,
          options: params[:request_options]
        )
      end

      # Lists a member's employment across every employer — the same employee record
      # shape as the employer's employees list, plus the employer name. For an
      # organization caller the rows are scoped to companies in that organization's
      # book; a member (self/household) or Vitable Admin sees all employments. A member
      # not visible to the caller returns a 404.
      #
      # @overload list_employments(member_id, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::MemberListEmploymentsResponse]
      #
      # @see VitableConnect::Models::MemberListEmploymentsParams
      def list_employments(member_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/members/%1$s/employments", member_id],
          model: VitableConnect::Models::MemberListEmploymentsResponse,
          options: params[:request_options]
        )
      end

      # Lists a member's benefit enrollments across every employer — benefit type and
      # product, employer, carrier, plan, tier, employee deduction, employer
      # contribution and total premium, the individual enrollment coverage boundary
      # (`coverage_end`), the separate pre-effective cancellation boundary
      # (`cancelled_date`), and the distinct benefit plan-year boundary
      # (`plan_year_coverage_end`) used to determine whether the plan year itself has
      # ended, whether a qualifying life event would currently be required for reissue
      # under the product/open-enrollment rule, enrollment/open-enrollment window, and
      # two statuses: `election_status` (what the member answered) and `policy_status`
      # (what became of their coverage, null unless they enrolled). Every row includes a
      # stable enrollment ID and the exact employer and benefit plan-year IDs used to
      # fetch that row's plan-year detail. The full list is returned across all states
      # so the client derives active plans (effective and upcoming) and the enrollment
      # history from those per-row statuses. For an organization caller the rows are
      # scoped to companies in that organization's book; a member (self/household) or
      # Vitable Admin sees all enrollments. A member not visible to the caller returns
      # a 404.
      #
      # @overload list_enrollments(member_id, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::MemberListEnrollmentsResponse]
      #
      # @see VitableConnect::Models::MemberListEnrollmentsParams
      def list_enrollments(member_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/members/%1$s/enrollments", member_id],
          model: VitableConnect::Models::MemberListEnrollmentsResponse,
          options: params[:request_options]
        )
      end

      # Lists a member's benefit ID cards — card type (medical, dental, vision, or rx),
      # employer, plan, provider network, claims payer, carrier contact details, and the
      # disclaimers printed on the card. Medical, dental and vision cards come from the
      # member's active digital benefit cards; the rx card from the member's Ventegra
      # pharmacy benefit (omitted when the member has no free-medication coverage),
      # which carries no plan, network, or carrier details. Access is scoped to the
      # authenticated principal, and an organization caller sees only cards from
      # employers in its book; a member not visible to the caller returns a 404.
      #
      # @overload list_id_cards(member_id, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::MemberListIDCardsResponse]
      #
      # @see VitableConnect::Models::MemberListIDCardsParams
      def list_id_cards(member_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/members/%1$s/id-cards", member_id],
          model: VitableConnect::Models::MemberListIDCardsResponse,
          options: params[:request_options]
        )
      end

      # Lists a member's qualifying life events, including events already used for
      # another enrollment. Returns all statuses by default; pass the status query param
      # to filter to one (e.g. approved). Events are ordered newest submission first
      # with stable paging. Custom text is present only when submitted and is otherwise
      # null. A member not visible to the caller returns a 404. API keys and unbound
      # access tokens have organization-wide access. Employer-bound tokens require
      # employment at the bound employer, and employee-bound tokens require the exact
      # employee-member relationship. Organization or scope mismatches return a 404
      # before pagination is validated.
      #
      # @overload list_qualifying_life_events(member_id, limit: nil, page: nil, status: nil, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param status [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsParams::Status] Optional. Filter to a single QLE status; omit to return all statuses.
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::MemberListQualifyingLifeEventsResponse>]
      #
      # @see VitableConnect::Models::MemberListQualifyingLifeEventsParams
      def list_qualifying_life_events(member_id, params = {})
        parsed, options = VitableConnect::MemberListQualifyingLifeEventsParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/members/%1$s/qualifying-life-events", member_id],
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Models::MemberListQualifyingLifeEventsResponse,
          options: options
        )
      end

      # Lists a member's household as a per-participant table — the account holder plus
      # each active household member, with name, relationship, member type, date of
      # birth, and household-admin flag. Access is scoped to the authenticated
      # principal; a member not visible to the caller (or with no household) returns
      # a 404.
      #
      # @overload retrieve_household(member_id, request_options: {})
      #
      # @param member_id [String] Unique member identifier (mbr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::MemberRetrieveHouseholdResponse]
      #
      # @see VitableConnect::Models::MemberRetrieveHouseholdParams
      def retrieve_household(member_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/members/%1$s/household", member_id],
          model: VitableConnect::Models::MemberRetrieveHouseholdResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
