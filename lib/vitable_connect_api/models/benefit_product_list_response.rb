# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::BenefitProducts#list
    class BenefitProductListResponse < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnectAPI::Models::BenefitProductListResponse::Data>]
      required :data,
               -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Models::BenefitProductListResponse::Data] }

      # @!attribute pagination
      #   Pagination metadata for list responses.
      #
      #   @return [VitableConnectAPI::Models::BenefitProductListResponse::Pagination]
      required :pagination, -> { VitableConnectAPI::Models::BenefitProductListResponse::Pagination }

      # @!method initialize(data:, pagination:)
      #   Paginated list response containing benefit product resources.
      #
      #   @param data [Array<VitableConnectAPI::Models::BenefitProductListResponse::Data>]
      #
      #   @param pagination [VitableConnectAPI::Models::BenefitProductListResponse::Pagination] Pagination metadata for list responses.

      class Data < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Unique benefit product identifier with 'bprd\_' prefix
        #
        #   @return [String]
        required :id, String

        # @!attribute active_in
        #   Whether this product is currently available for offering
        #
        #   @return [Boolean]
        required :active_in, VitableConnectAPI::Internal::Type::Boolean

        # @!attribute category
        #   - `Medical` - Medical
        #   - `Dental` - Dental
        #   - `Vision` - Vision
        #   - `Hospital` - Hospital
        #
        #   @return [Symbol, VitableConnectAPI::Models::Category]
        required :category, enum: -> { VitableConnectAPI::Category }

        # @!attribute created_at
        #   Timestamp when the product was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute name
        #   Display name of the benefit product
        #
        #   @return [String]
        required :name, String

        # @!attribute product_code
        #   - `EBA` - Eba Mec
        #   - `VPC` - Vpc Enhanced
        #   - `VPC_CORE` - Vpc Core
        #   - `MEC` - Vpc Mec
        #   - `MEC2` - Mec2
        #   - `MEC_PLUS` - Mec Plus
        #   - `MVP` - Mvp
        #   - `MVP2` - Mvp2
        #   - `MVPSL` - Mvpsl
        #   - `MVPSL2` - Mvpsl2
        #   - `VD` - Dental
        #   - `VV` - Vision
        #   - `ICHRA` - Ichra
        #   - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
        #   - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
        #
        #   @return [Symbol, VitableConnectAPI::Models::ProductCode]
        required :product_code, enum: -> { VitableConnectAPI::ProductCode }

        # @!attribute updated_at
        #   Timestamp when the product was last updated
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute carrier_name
        #   Name of the carrier providing this product
        #
        #   @return [String, nil]
        optional :carrier_name, String, nil?: true

        # @!attribute description
        #   Detailed description of the benefit product
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(id:, active_in:, category:, created_at:, name:, product_code:, updated_at:, carrier_name: nil, description: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::BenefitProductListResponse::Data} for more details.
        #
        #   Serializer for Benefit Product entity in public API responses.
        #
        #   Benefit Products represent types of benefits (dental, vision, medical, etc.)
        #   that an Organization can offer to their Employers.
        #
        #   @param id [String] Unique benefit product identifier with 'bprd\_' prefix
        #
        #   @param active_in [Boolean] Whether this product is currently available for offering
        #
        #   @param category [Symbol, VitableConnectAPI::Models::Category] - `Medical` - Medical
        #
        #   @param created_at [Time] Timestamp when the product was created
        #
        #   @param name [String] Display name of the benefit product
        #
        #   @param product_code [Symbol, VitableConnectAPI::Models::ProductCode] - `EBA` - Eba Mec
        #
        #   @param updated_at [Time] Timestamp when the product was last updated
        #
        #   @param carrier_name [String, nil] Name of the carrier providing this product
        #
        #   @param description [String, nil] Detailed description of the benefit product
      end

      # @see VitableConnectAPI::Models::BenefitProductListResponse#pagination
      class Pagination < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute limit
        #   Items per page
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute page
        #   Current page number
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute total
        #   Total number of items
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute total_pages
        #   Total number of pages
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!method initialize(limit:, page:, total:, total_pages:)
        #   Pagination metadata for list responses.
        #
        #   @param limit [Integer] Items per page
        #
        #   @param page [Integer] Current page number
        #
        #   @param total [Integer] Total number of items
        #
        #   @param total_pages [Integer] Total number of pages
      end
    end
  end
end
