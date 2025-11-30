# typed: strong

module VitableConnectAPI
  module Models
    class BenefitProductListResponseItem < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Models::BenefitProductListResponseItem,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Unique benefit product identifier with 'bprd\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # Whether this product is currently available for offering
      sig { returns(T::Boolean) }
      attr_accessor :active

      # - `Medical` - Medical
      # - `Dental` - Dental
      # - `Vision` - Vision
      # - `Hospital` - Hospital
      sig { returns(VitableConnectAPI::Category::TaggedSymbol) }
      attr_accessor :category

      # Timestamp when the product was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Display name of the benefit product
      sig { returns(String) }
      attr_accessor :name

      # - `EBA` - Eba Mec
      # - `VPC` - Vpc Enhanced
      # - `VPC_CORE` - Vpc Core
      # - `MEC` - Vpc Mec
      # - `MEC2` - Mec2
      # - `MEC_PLUS` - Mec Plus
      # - `MVP` - Mvp
      # - `MVP2` - Mvp2
      # - `MVPSL` - Mvpsl
      # - `MVPSL2` - Mvpsl2
      # - `VD` - Dental
      # - `VV` - Vision
      # - `ICHRA` - Ichra
      # - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
      # - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
      sig { returns(VitableConnectAPI::ProductCode::TaggedSymbol) }
      attr_accessor :product_code

      # Timestamp when the product was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Name of the insurance carrier providing this product
      sig { returns(T.nilable(String)) }
      attr_accessor :carrier_name

      # Detailed description of the benefit product
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Serializer for Benefit Product entity in public API responses.
      #
      # Benefit Products represent types of benefits (dental, vision, medical, etc.)
      # that an Organization can offer to their Employers.
      sig do
        params(
          id: String,
          active: T::Boolean,
          category: VitableConnectAPI::Category::OrSymbol,
          created_at: Time,
          name: String,
          product_code: VitableConnectAPI::ProductCode::OrSymbol,
          updated_at: Time,
          carrier_name: T.nilable(String),
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique benefit product identifier with 'bprd\_' prefix
        id:,
        # Whether this product is currently available for offering
        active:,
        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        category:,
        # Timestamp when the product was created
        created_at:,
        # Display name of the benefit product
        name:,
        # - `EBA` - Eba Mec
        # - `VPC` - Vpc Enhanced
        # - `VPC_CORE` - Vpc Core
        # - `MEC` - Vpc Mec
        # - `MEC2` - Mec2
        # - `MEC_PLUS` - Mec Plus
        # - `MVP` - Mvp
        # - `MVP2` - Mvp2
        # - `MVPSL` - Mvpsl
        # - `MVPSL2` - Mvpsl2
        # - `VD` - Dental
        # - `VV` - Vision
        # - `ICHRA` - Ichra
        # - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
        # - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
        product_code:,
        # Timestamp when the product was last updated
        updated_at:,
        # Name of the insurance carrier providing this product
        carrier_name: nil,
        # Detailed description of the benefit product
        description: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            category: VitableConnectAPI::Category::TaggedSymbol,
            created_at: Time,
            name: String,
            product_code: VitableConnectAPI::ProductCode::TaggedSymbol,
            updated_at: Time,
            carrier_name: T.nilable(String),
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end

    BenefitProductListResponse =
      T.let(
        VitableConnectAPI::Internal::Type::ArrayOf[
          VitableConnectAPI::Models::BenefitProductListResponseItem
        ],
        VitableConnectAPI::Internal::Type::Converter
      )
  end
end
