# typed: strong

module VitableConnect
  module Resources
    # Manage dependent records (spouses, children) for employees
    class Dependents
      # Retrieves detailed information for a specific dependent by ID. Returns dependent
      # profile including name, date of birth, and relationship type.
      sig do
        params(
          dependent_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::DependentResponse)
      end
      def retrieve(
        # Unique dependent identifier (dpnd\_\*)
        dependent_id,
        request_options: {}
      )
      end

      # Updates an existing dependent's mutable information. Allows modification of
      # relationship type and active status. Name, DOB, and sex cannot be modified after
      # creation.
      sig do
        params(
          dependent_id: String,
          active: T.nilable(T::Boolean),
          gender: T.nilable(String),
          relationship: T.nilable(VitableConnect::Relationship::OrSymbol),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::DependentResponse)
      end
      def update(
        # Unique dependent identifier (dpnd\_\*)
        dependent_id,
        # Whether the dependent is active
        active: nil,
        # Gender identity
        gender: nil,
        # - `Spouse` - Spouse
        # - `Child` - Child
        relationship: nil,
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
