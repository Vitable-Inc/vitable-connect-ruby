# typed: strong

module VitableConnect
  module Models
    class BenefitProductListResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::BenefitProductListResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[VitableConnect::Models::BenefitProductListResponse::Data]
        )
      end
      attr_accessor :data

      # Pagination metadata for list responses.
      sig { returns(VitableConnect::Pagination) }
      attr_reader :pagination

      sig { params(pagination: VitableConnect::Pagination::OrHash).void }
      attr_writer :pagination

      # Paginated list response containing benefit product resources.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::BenefitProductListResponse::Data::OrHash
            ],
          pagination: VitableConnect::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Pagination metadata for list responses.
        pagination:
      )
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::BenefitProductListResponse::Data
              ],
            pagination: VitableConnect::Pagination
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::BenefitProductListResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique benefit product identifier with 'bprd\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # Whether this product is currently available for offering
        sig { returns(T::Boolean) }
        attr_accessor :active_in

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        sig { returns(VitableConnect::Category::TaggedSymbol) }
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
        sig { returns(VitableConnect::ProductCode::TaggedSymbol) }
        attr_accessor :product_code

        # Timestamp when the product was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Name of the carrier providing this product
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
            active_in: T::Boolean,
            category: VitableConnect::Category::OrSymbol,
            created_at: Time,
            name: String,
            product_code: VitableConnect::ProductCode::OrSymbol,
            updated_at: Time,
            carrier_name: T.nilable(String),
            description: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique benefit product identifier with 'bprd\_' prefix
          id:,
          # Whether this product is currently available for offering
          active_in:,
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
          # Name of the carrier providing this product
          carrier_name: nil,
          # Detailed description of the benefit product
          description: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active_in: T::Boolean,
              category: VitableConnect::Category::TaggedSymbol,
              created_at: Time,
              name: String,
              product_code: VitableConnect::ProductCode::TaggedSymbol,
              updated_at: Time,
              carrier_name: T.nilable(String),
              description: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
