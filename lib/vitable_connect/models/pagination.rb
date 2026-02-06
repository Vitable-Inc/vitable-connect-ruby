# frozen_string_literal: true

module VitableConnect
  module Models
    class Pagination < VitableConnect::Internal::Type::BaseModel
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
