# typed: strong

module VitableConnect
  module Models
    class OrganizationCreateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::OrganizationCreateParams,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :name

      # - `BROKERAGE` - BROKERAGE
      # - `TPA` - TPA
      # - `GENERAL_AGENT` - GENERAL_AGENT
      # - `CHANNEL_PARTNER` - CHANNEL_PARTNER
      # - `CONSULTING_FIRM` - CONSULTING_FIRM
      # - `API_PLATFORM` - API_PLATFORM
      sig do
        returns(
          T.nilable(VitableConnect::OrganizationCreateParams::Type::OrSymbol)
        )
      end
      attr_accessor :type

      sig do
        params(
          name: String,
          type:
            T.nilable(VitableConnect::OrganizationCreateParams::Type::OrSymbol),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        # - `BROKERAGE` - BROKERAGE
        # - `TPA` - TPA
        # - `GENERAL_AGENT` - GENERAL_AGENT
        # - `CHANNEL_PARTNER` - CHANNEL_PARTNER
        # - `CONSULTING_FIRM` - CONSULTING_FIRM
        # - `API_PLATFORM` - API_PLATFORM
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            type:
              T.nilable(
                VitableConnect::OrganizationCreateParams::Type::OrSymbol
              ),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `BROKERAGE` - BROKERAGE
      # - `TPA` - TPA
      # - `GENERAL_AGENT` - GENERAL_AGENT
      # - `CHANNEL_PARTNER` - CHANNEL_PARTNER
      # - `CONSULTING_FIRM` - CONSULTING_FIRM
      # - `API_PLATFORM` - API_PLATFORM
      module Type
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::OrganizationCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BROKERAGE =
          T.let(
            :BROKERAGE,
            VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
          )
        TPA =
          T.let(
            :TPA,
            VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
          )
        GENERAL_AGENT =
          T.let(
            :GENERAL_AGENT,
            VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
          )
        CHANNEL_PARTNER =
          T.let(
            :CHANNEL_PARTNER,
            VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
          )
        CONSULTING_FIRM =
          T.let(
            :CONSULTING_FIRM,
            VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
          )
        API_PLATFORM =
          T.let(
            :API_PLATFORM,
            VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::OrganizationCreateParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
