# typed: strong

module VitableConnectAPI
  module Models
    class EnrollmentListPlansResponseItem < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Models::EnrollmentListPlansResponseItem,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Unique plan identifier (plan\_\*)
      sig { returns(String) }
      attr_accessor :id

      # Cost breakdown by coverage tier
      sig do
        returns(
          T::Array[
            VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost
          ]
        )
      end
      attr_accessor :costs

      # Display name of the plan
      sig { returns(String) }
      attr_accessor :name

      # Name of the insurance carrier
      sig { returns(T.nilable(String)) }
      attr_accessor :carrier_name

      # Annual deductible in cents
      sig { returns(T.nilable(Integer)) }
      attr_accessor :deductible_cents

      # Plan description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Annual out-of-pocket maximum in cents
      sig { returns(T.nilable(Integer)) }
      attr_accessor :out_of_pocket_max_cents

      # - `Bronze` - Bronze
      # - `Silver` - Silver
      # - `Gold` - Gold
      # - `Platinum` - Platinum
      sig { returns(T.nilable(VitableConnectAPI::PlanTier::TaggedSymbol)) }
      attr_accessor :tier

      # Serializer for plan options available for enrollment selection.
      #
      # Returns plan details with cost breakdowns for each coverage tier.
      sig do
        params(
          id: String,
          costs:
            T::Array[
              VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost::OrHash
            ],
          name: String,
          carrier_name: T.nilable(String),
          deductible_cents: T.nilable(Integer),
          description: T.nilable(String),
          out_of_pocket_max_cents: T.nilable(Integer),
          tier: T.nilable(VitableConnectAPI::PlanTier::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique plan identifier (plan\_\*)
        id:,
        # Cost breakdown by coverage tier
        costs:,
        # Display name of the plan
        name:,
        # Name of the insurance carrier
        carrier_name: nil,
        # Annual deductible in cents
        deductible_cents: nil,
        # Plan description
        description: nil,
        # Annual out-of-pocket maximum in cents
        out_of_pocket_max_cents: nil,
        # - `Bronze` - Bronze
        # - `Silver` - Silver
        # - `Gold` - Gold
        # - `Platinum` - Platinum
        tier: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            costs:
              T::Array[
                VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost
              ],
            name: String,
            carrier_name: T.nilable(String),
            deductible_cents: T.nilable(Integer),
            description: T.nilable(String),
            out_of_pocket_max_cents: T.nilable(Integer),
            tier: T.nilable(VitableConnectAPI::PlanTier::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      class Cost < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # - `Unspecified` - Unspecified
        # - `EE` - Ee
        # - `ES` - Es
        # - `EC` - Ec
        # - `EF` - Ef
        sig { returns(VitableConnectAPI::CoverageTier::TaggedSymbol) }
        attr_accessor :coverage_tier

        # Employee's monthly contribution in cents
        sig { returns(Integer) }
        attr_accessor :employee_contribution_cents

        # Employer's monthly contribution in cents
        sig { returns(Integer) }
        attr_accessor :employer_contribution_cents

        # Total monthly premium in cents
        sig { returns(Integer) }
        attr_accessor :total_monthly_premium_cents

        # Cost breakdown for a plan option.
        sig do
          params(
            coverage_tier: VitableConnectAPI::CoverageTier::OrSymbol,
            employee_contribution_cents: Integer,
            employer_contribution_cents: Integer,
            total_monthly_premium_cents: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # - `Unspecified` - Unspecified
          # - `EE` - Ee
          # - `ES` - Es
          # - `EC` - Ec
          # - `EF` - Ef
          coverage_tier:,
          # Employee's monthly contribution in cents
          employee_contribution_cents:,
          # Employer's monthly contribution in cents
          employer_contribution_cents:,
          # Total monthly premium in cents
          total_monthly_premium_cents:
        )
        end

        sig do
          override.returns(
            {
              coverage_tier: VitableConnectAPI::CoverageTier::TaggedSymbol,
              employee_contribution_cents: Integer,
              employer_contribution_cents: Integer,
              total_monthly_premium_cents: Integer
            }
          )
        end
        def to_hash
        end
      end
    end

    EnrollmentListPlansResponse =
      T.let(
        VitableConnectAPI::Internal::Type::ArrayOf[
          VitableConnectAPI::Models::EnrollmentListPlansResponseItem
        ],
        VitableConnectAPI::Internal::Type::Converter
      )
  end
end
