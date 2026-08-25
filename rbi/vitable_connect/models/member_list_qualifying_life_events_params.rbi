# typed: strong

module VitableConnect
  module Models
    class MemberListQualifyingLifeEventsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::MemberListQualifyingLifeEventsParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique member identifier (mbr\_\*)
      sig { returns(String) }
      attr_accessor :member_id

      # Items per page (default: 20, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Page number (default: 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Optional. Filter to a single QLE status; omit to return all statuses.
      sig do
        returns(
          T.nilable(
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          member_id: String,
          limit: Integer,
          page: Integer,
          status:
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique member identifier (mbr\_\*)
        member_id:,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Optional. Filter to a single QLE status; omit to return all statuses.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            member_id: String,
            limit: Integer,
            page: Integer,
            status:
              VitableConnect::MemberListQualifyingLifeEventsParams::Status::OrSymbol,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional. Filter to a single QLE status; omit to return all statuses.
      module Status
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::MemberListQualifyingLifeEventsParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(
            :approved,
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            VitableConnect::MemberListQualifyingLifeEventsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::MemberListQualifyingLifeEventsParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
