# typed: strong

module VitablePartnerAPI
  module Resources
    class Dependents
      # Updates an existing Dependent for a specific Employee for an Employer.
      sig do
        params(
          id: String,
          date_of_birth: Date,
          first_name: String,
          gender: VitablePartnerAPI::UpdateDependentRequest::Gender::OrSymbol,
          last_name: String,
          relationship:
            VitablePartnerAPI::UpdateDependentRequest::Relationship::OrSymbol,
          sex: VitablePartnerAPI::UpdateDependentRequest::Sex::OrSymbol,
          suffix: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Dependent)
      end
      def update(
        # Dependent ID (prefixed with dpnd\_)
        id,
        date_of_birth: nil,
        first_name: nil,
        gender: nil,
        last_name: nil,
        relationship: nil,
        sex: nil,
        suffix: nil,
        request_options: {}
      )
      end

      # @api private
      sig do
        params(client: VitablePartnerAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
