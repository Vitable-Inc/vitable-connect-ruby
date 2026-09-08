# frozen_string_literal: true

module VitableConnect
  module Internal
    # @generic Elem
    #
    # @example
    #   if page_number_page.has_next?
    #     page_number_page = page_number_page.next_page
    #   end
    #
    # @example
    #   page_number_page.auto_paging_each do |employee|
    #     puts(employee)
    #   end
    class PageNumberPage
      include VitableConnect::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Pagination]
      attr_accessor :pagination

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && (pagination&.page.nil? || pagination&.total_pages.nil? || (pagination&.page&.< pagination&.total_pages))
      end

      # @raise [VitableConnect::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = VitableConnect::Internal::Util.deep_merge(
          @req,
          {query: {page: (pagination&.page || 1).to_i.succ}}
        )
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [VitableConnect::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { VitableConnect::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {pagination: Hash | nil => pagination}
          @pagination =
            VitableConnect::Internal::Type::Converter.coerce(
              VitableConnect::Internal::PageNumberPage::Pagination,
              pagination
            )
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = VitableConnect::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class Pagination < VitableConnect::Internal::Type::BaseModel
        # @!attribute page
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute total_pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!method initialize(page: nil, total_pages: nil)
        #   @param page [Integer]
        #   @param total_pages [Integer]
      end
    end
  end
end
