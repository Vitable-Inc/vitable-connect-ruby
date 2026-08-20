# typed: strong

module VitableConnect
  module Models
    class AuthLoginParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::AuthLoginParams,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email_or_phone

      # - `Member` - Member
      # - `NursePractitioner` - Provider
      # - `CompanyAdmin` - Company Admin
      # - `VitableAdmin` - Vitable Admin
      # - `ClinicalAdmin` - Clinical Admin
      # - `PartnerEmployee` - Partner Employee
      # - `OrganizationUser` - Organization User
      # - `ExternalAdmin` - External Admin
      sig { returns(VitableConnect::AuthLoginParams::UserType::OrSymbol) }
      attr_accessor :user_type

      sig { returns(T.nilable(String)) }
      attr_reader :app_name

      sig { params(app_name: String).void }
      attr_writer :app_name

      sig { returns(T.nilable(String)) }
      attr_reader :app_version

      sig { params(app_version: String).void }
      attr_writer :app_version

      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      sig { returns(T.nilable(String)) }
      attr_reader :two_factor_token

      sig { params(two_factor_token: String).void }
      attr_writer :two_factor_token

      sig do
        params(
          email_or_phone: String,
          user_type: VitableConnect::AuthLoginParams::UserType::OrSymbol,
          app_name: String,
          app_version: String,
          password: String,
          two_factor_token: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        email_or_phone:,
        # - `Member` - Member
        # - `NursePractitioner` - Provider
        # - `CompanyAdmin` - Company Admin
        # - `VitableAdmin` - Vitable Admin
        # - `ClinicalAdmin` - Clinical Admin
        # - `PartnerEmployee` - Partner Employee
        # - `OrganizationUser` - Organization User
        # - `ExternalAdmin` - External Admin
        user_type:,
        app_name: nil,
        app_version: nil,
        password: nil,
        two_factor_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email_or_phone: String,
            user_type: VitableConnect::AuthLoginParams::UserType::OrSymbol,
            app_name: String,
            app_version: String,
            password: String,
            two_factor_token: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `Member` - Member
      # - `NursePractitioner` - Provider
      # - `CompanyAdmin` - Company Admin
      # - `VitableAdmin` - Vitable Admin
      # - `ClinicalAdmin` - Clinical Admin
      # - `PartnerEmployee` - Partner Employee
      # - `OrganizationUser` - Organization User
      # - `ExternalAdmin` - External Admin
      module UserType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::AuthLoginParams::UserType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MEMBER =
          T.let(
            :Member,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        NURSE_PRACTITIONER =
          T.let(
            :NursePractitioner,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        COMPANY_ADMIN =
          T.let(
            :CompanyAdmin,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        VITABLE_ADMIN =
          T.let(
            :VitableAdmin,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        CLINICAL_ADMIN =
          T.let(
            :ClinicalAdmin,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        PARTNER_EMPLOYEE =
          T.let(
            :PartnerEmployee,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        ORGANIZATION_USER =
          T.let(
            :OrganizationUser,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )
        EXTERNAL_ADMIN =
          T.let(
            :ExternalAdmin,
            VitableConnect::AuthLoginParams::UserType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitableConnect::AuthLoginParams::UserType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
