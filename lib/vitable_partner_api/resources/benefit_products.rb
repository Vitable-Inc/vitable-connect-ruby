# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class BenefitProducts
      # @return [VitablePartnerAPI::Resources::BenefitProducts::PlanYears]
      attr_reader :plan_years

      # Lists all Benefit Products that an Organization has access to that they can
      # offer to their Employers.
      #
      # @overload list(limit: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] Number of results to return
      #
      # @param offset [Integer] Number of results to skip
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::BenefitProductListResponse]
      #
      # @see VitablePartnerAPI::Models::BenefitProductListParams
      def list(params = {})
        parsed, options = VitablePartnerAPI::BenefitProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "benefit-products",
          query: parsed,
          model: VitablePartnerAPI::Models::BenefitProductListResponse,
          options: options
        )
      end

      # Generates a quote with pricing for an Employer with metadata for a specific
      # Product. Employer/metadata would be in request body.
      #
      # @overload generate_quote(id, employer_id:, metadata: nil, request_options: {})
      #
      # @param id [String] Benefit Product ID (prefixed with bprd\_)
      #
      # @param employer_id [String]
      #
      # @param metadata [Hash{Symbol=>Object}] Additional metadata for quote generation
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Quote]
      #
      # @see VitablePartnerAPI::Models::BenefitProductGenerateQuoteParams
      def generate_quote(id, params)
        parsed, options = VitablePartnerAPI::BenefitProductGenerateQuoteParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["benefit-products/%1$s/quote", id],
          body: parsed,
          model: VitablePartnerAPI::Quote,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitablePartnerAPI::Client]
      def initialize(client:)
        @client = client
        @plan_years = VitablePartnerAPI::Resources::BenefitProducts::PlanYears.new(client: client)
      end
    end
  end
end
