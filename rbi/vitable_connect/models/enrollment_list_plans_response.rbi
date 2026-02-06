# typed: strong

module VitableConnect
  module Models
    class EnrollmentListPlansResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EnrollmentListPlansResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[VitableConnect::Models::EnrollmentListPlansResponse::Data]
        )
      end
      attr_accessor :data

      # Pagination metadata for list responses.
      sig { returns(VitableConnect::Pagination) }
      attr_reader :pagination

      sig { params(pagination: VitableConnect::Pagination::OrHash).void }
      attr_writer :pagination

      # Paginated list response containing plan option resources.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::EnrollmentListPlansResponse::Data::OrHash
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
                VitableConnect::Models::EnrollmentListPlansResponse::Data
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
              VitableConnect::Models::EnrollmentListPlansResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique plan identifier (plan\_\*)
        sig { returns(String) }
        attr_accessor :id

        # Cost breakdown by coverage tier
        sig do
          returns(
            T::Array[
              VitableConnect::Models::EnrollmentListPlansResponse::Data::Cost
            ]
          )
        end
        attr_accessor :costs

        # Display name of the plan
        sig { returns(String) }
        attr_accessor :name

        # Name of the carrier
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
        sig { returns(T.nilable(VitableConnect::PlanTier::TaggedSymbol)) }
        attr_accessor :tier

        # Serializer for plan options available for enrollment selection.
        #
        # Returns plan details with cost breakdowns for each coverage tier.
        sig do
          params(
            id: String,
            costs:
              T::Array[
                VitableConnect::Models::EnrollmentListPlansResponse::Data::Cost::OrHash
              ],
            name: String,
            carrier_name: T.nilable(String),
            deductible_cents: T.nilable(Integer),
            description: T.nilable(String),
            out_of_pocket_max_cents: T.nilable(Integer),
            tier: T.nilable(VitableConnect::PlanTier::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique plan identifier (plan\_\*)
          id:,
          # Cost breakdown by coverage tier
          costs:,
          # Display name of the plan
          name:,
          # Name of the carrier
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
                  VitableConnect::Models::EnrollmentListPlansResponse::Data::Cost
                ],
              name: String,
              carrier_name: T.nilable(String),
              deductible_cents: T.nilable(Integer),
              description: T.nilable(String),
              out_of_pocket_max_cents: T.nilable(Integer),
              tier: T.nilable(VitableConnect::PlanTier::TaggedSymbol)
            }
          )
        end
        def to_hash
        end

        class Cost < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EnrollmentListPlansResponse::Data::Cost,
                VitableConnect::Internal::AnyHash
              )
            end

          # - `Unspecified` - Unspecified
          # - `EE` - Ee
          # - `ES` - Es
          # - `EC` - Ec
          # - `EF` - Ef
          sig { returns(VitableConnect::CoverageTier::TaggedSymbol) }
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
              coverage_tier: VitableConnect::CoverageTier::OrSymbol,
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
                coverage_tier: VitableConnect::CoverageTier::TaggedSymbol,
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
    end
  end
end
