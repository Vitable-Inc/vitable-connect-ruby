# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employers#list
    class EmployerListResponse < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitablePartnerAPI::Models::Employer>, nil]
      optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Employer] }

      # @!attribute pagination
      #
      #   @return [VitablePartnerAPI::Models::EmployerListResponse::Pagination, nil]
      optional :pagination, -> { VitablePartnerAPI::Models::EmployerListResponse::Pagination }

      # @!method initialize(data: nil, pagination: nil)
      #   @param data [Array<VitablePartnerAPI::Models::Employer>]
      #   @param pagination [VitablePartnerAPI::Models::EmployerListResponse::Pagination]

      # @see VitablePartnerAPI::Models::EmployerListResponse#pagination
      class Pagination < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute offset
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(limit:, offset:, total:)
        #   @param limit [Integer]
        #   @param offset [Integer]
        #   @param total [Integer]
      end
    end
  end
end
