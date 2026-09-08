# typed: strong

module VitableConnect
  module Internal
    class PageNumberPage
      include VitableConnect::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Pagination) }
      attr_accessor :pagination

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Pagination < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Pagination, VitableConnect::Internal::AnyHash) }

        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        sig do
          params(page: Integer, total_pages: Integer).returns(T.attached_class)
        end
        def self.new(page: nil, total_pages: nil)
        end

        sig { override.returns({ page: Integer, total_pages: Integer }) }
        def to_hash
        end
      end
    end
  end
end
