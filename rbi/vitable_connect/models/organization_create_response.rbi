# typed: strong

module VitableConnect
  module Models
    class OrganizationCreateResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::OrganizationCreateResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Prefixed organization identifier (`org_<base64-encoded-uuid>`).
      sig { returns(String) }
      attr_accessor :id

      # IdP-issued tenant id (WorkOS org id).
      sig { returns(T.nilable(String)) }
      attr_accessor :idp_org_id

      # - `workos` - WorkOS
      # - `vitable` - Vitable
      sig do
        returns(
          T.nilable(
            VitableConnect::Models::OrganizationCreateResponse::IdpProvider::TaggedSymbol
          )
        )
      end
      attr_accessor :idp_provider

      # Human-readable organization name.
      sig { returns(String) }
      attr_accessor :name

      # Whether this organization reads across every organization.
      sig { returns(T::Boolean) }
      attr_accessor :super_in

      # - `BROKERAGE` - Brokerage
      # - `TPA` - TPA
      # - `GENERAL_AGENT` - General Agent
      # - `CHANNEL_PARTNER` - Channel Partner
      # - `CONSULTING_FIRM` - Consulting Firm
      # - `API_PLATFORM` - API Platform
      sig do
        returns(
          T.nilable(
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )
        )
      end
      attr_accessor :type

      sig do
        params(
          id: String,
          idp_org_id: T.nilable(String),
          idp_provider:
            T.nilable(
              VitableConnect::Models::OrganizationCreateResponse::IdpProvider::OrSymbol
            ),
          name: String,
          super_in: T::Boolean,
          type:
            T.nilable(
              VitableConnect::Models::OrganizationCreateResponse::Type::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Prefixed organization identifier (`org_<base64-encoded-uuid>`).
        id:,
        # IdP-issued tenant id (WorkOS org id).
        idp_org_id:,
        # - `workos` - WorkOS
        # - `vitable` - Vitable
        idp_provider:,
        # Human-readable organization name.
        name:,
        # Whether this organization reads across every organization.
        super_in:,
        # - `BROKERAGE` - Brokerage
        # - `TPA` - TPA
        # - `GENERAL_AGENT` - General Agent
        # - `CHANNEL_PARTNER` - Channel Partner
        # - `CONSULTING_FIRM` - Consulting Firm
        # - `API_PLATFORM` - API Platform
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            idp_org_id: T.nilable(String),
            idp_provider:
              T.nilable(
                VitableConnect::Models::OrganizationCreateResponse::IdpProvider::TaggedSymbol
              ),
            name: String,
            super_in: T::Boolean,
            type:
              T.nilable(
                VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
              )
          }
        )
      end
      def to_hash
      end

      # - `workos` - WorkOS
      # - `vitable` - Vitable
      module IdpProvider
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::OrganizationCreateResponse::IdpProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WORKOS =
          T.let(
            :workos,
            VitableConnect::Models::OrganizationCreateResponse::IdpProvider::TaggedSymbol
          )
        VITABLE =
          T.let(
            :vitable,
            VitableConnect::Models::OrganizationCreateResponse::IdpProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::OrganizationCreateResponse::IdpProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `BROKERAGE` - Brokerage
      # - `TPA` - TPA
      # - `GENERAL_AGENT` - General Agent
      # - `CHANNEL_PARTNER` - Channel Partner
      # - `CONSULTING_FIRM` - Consulting Firm
      # - `API_PLATFORM` - API Platform
      module Type
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::OrganizationCreateResponse::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BROKERAGE =
          T.let(
            :BROKERAGE,
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )
        TPA =
          T.let(
            :TPA,
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )
        GENERAL_AGENT =
          T.let(
            :GENERAL_AGENT,
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )
        CHANNEL_PARTNER =
          T.let(
            :CHANNEL_PARTNER,
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )
        CONSULTING_FIRM =
          T.let(
            :CONSULTING_FIRM,
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )
        API_PLATFORM =
          T.let(
            :API_PLATFORM,
            VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::OrganizationCreateResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
