# typed: strong

module VitableConnect
  module Resources
    class Groups
      sig { returns(VitableConnect::Resources::Groups::Members) }
      attr_reader :members

      # Creates a new group scoped to the authenticated organization.
      sig do
        params(
          external_reference_id: String,
          name: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::GroupResponse)
      end
      def create(external_reference_id:, name:, request_options: {})
      end

      # Retrieves a single group by its prefixed ID. Returns 404 if the group does not
      # belong to the authenticated organization.
      sig do
        params(
          group_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::GroupResponse)
      end
      def retrieve(
        # Unique group identifier (grp\_\*)
        group_id,
        request_options: {}
      )
      end

      # Partially updates a group's name or external reference ID. Returns 404 if the
      # group does not belong to the authenticated organization.
      sig do
        params(
          group_id: String,
          external_reference_id: T.nilable(String),
          name: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::GroupResponse)
      end
      def update(
        # Unique group identifier (grp\_\*)
        group_id,
        external_reference_id: nil,
        name: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of groups belonging to the authenticated organization.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[VitableConnect::Group]
        )
      end
      def list(
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
