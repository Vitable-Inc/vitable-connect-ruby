# typed: strong

module VitableConnect
  module Resources
    # Browse the members covered across your book and read a member's profile
    class Members
      # Retrieves a member's profile by ID — identity, demographics, address, contact
      # details, tobacco status, and profile status. Access is scoped to the
      # authenticated principal; a member not visible to the caller returns a 404.
      sig do
        params(
          member_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::MemberRetrieveResponse)
      end
      def retrieve(member_id, request_options: {})
      end

      # Retrieves a paginated list of the members in the authenticated organization's
      # book — identity, contact details, and address. The book covers members reached
      # through an employer in the organization's book as well as members of a group it
      # owns. Supports free-text search (name, email, or exact member id).
      sig do
        params(
          limit: Integer,
          page: Integer,
          search: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[
            VitableConnect::Models::MemberListResponse
          ]
        )
      end
      def list(
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Case-insensitive search across member name and email; exact match on member id
        search: nil,
        request_options: {}
      )
      end

      # Lists a member's active legal dependents — name, relationship, date of birth,
      # age, and sex at birth. Access is scoped to the authenticated principal; a member
      # not visible to the caller returns a 404.
      sig do
        params(
          member_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::MemberListDependentsResponse)
      end
      def list_dependents(member_id, request_options: {})
      end

      # Lists a member's employment across every employer — the same employee record
      # shape as the employer's employees list, plus the employer name. For an
      # organization caller the rows are scoped to companies in that organization's
      # book; a member (self/household) or Vitable Admin sees all employments. A member
      # not visible to the caller returns a 404.
      sig do
        params(
          member_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::MemberListEmploymentsResponse)
      end
      def list_employments(member_id, request_options: {})
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
      # stable enrollment ID that can be used to target enrollment actions. The full
      # list is returned across all states so the client derives active plans (effective
      # and upcoming) and the enrollment history from those per-row statuses. For an
      # organization caller the rows are scoped to companies in that organization's
      # book; a member (self/household) or Vitable Admin sees all enrollments. A member
      # not visible to the caller returns a 404.
      sig do
        params(
          member_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::MemberListEnrollmentsResponse)
      end
      def list_enrollments(member_id, request_options: {})
      end

      # Lists a member's benefit ID cards — card type (medical, dental, vision, or rx),
      # employer, plan, provider network, claims payer, carrier contact details, and the
      # disclaimers printed on the card. Medical, dental and vision cards come from the
      # member's active digital benefit cards; the rx card from the member's Ventegra
      # pharmacy benefit (omitted when the member has no free-medication coverage),
      # which carries no plan, network, or carrier details. Access is scoped to the
      # authenticated principal, and an organization caller sees only cards from
      # employers in its book; a member not visible to the caller returns a 404.
      sig do
        params(
          member_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::MemberListIDCardsResponse)
      end
      def list_id_cards(member_id, request_options: {})
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
      sig do
        params(
          member_id: String,
          limit: Integer,
          page: Integer,
          status:
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse
          ]
        )
      end
      def list_qualifying_life_events(
        # Unique member identifier (mbr\_\*)
        member_id,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Optional. Filter to a single QLE status; omit to return all statuses.
        status: nil,
        request_options: {}
      )
      end

      # Lists a member's household as a per-participant table — the account holder plus
      # each active household member, with name, relationship, member type, date of
      # birth, and household-admin flag. Access is scoped to the authenticated
      # principal; a member not visible to the caller (or with no household) returns
      # a 404.
      sig do
        params(
          member_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::MemberRetrieveHouseholdResponse)
      end
      def retrieve_household(member_id, request_options: {})
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
