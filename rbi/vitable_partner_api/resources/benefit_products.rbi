# typed: strong

module VitablePartnerAPI
  module Resources
    class BenefitProducts
      sig { returns(VitablePartnerAPI::Resources::BenefitProducts::PlanYears) }
      attr_reader :plan_years

      # Lists all Benefit Products that an Organization has access to that they can
      # offer to their Employers.
      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Models::BenefitProductListResponse)
      end
      def list(
        # Number of results to return
        limit: nil,
        # Number of results to skip
        offset: nil,
        request_options: {}
      )
      end

      # Generates a quote with pricing for an Employer with metadata for a specific
      # Product. Employer/metadata would be in request body.
      sig do
        params(
          id: String,
          employer_id: String,
          metadata: T::Hash[Symbol, T.anything],
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Quote)
      end
      def generate_quote(
        # Benefit Product ID (prefixed with bprd\_)
        id,
        employer_id:,
        # Additional metadata for quote generation
        metadata: nil,
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
