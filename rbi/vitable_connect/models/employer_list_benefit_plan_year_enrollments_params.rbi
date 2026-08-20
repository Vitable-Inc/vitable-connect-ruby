# typed: strong

module VitableConnect
  module Models
    class EmployerListBenefitPlanYearEnrollmentsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # Unique benefit-plan-year identifier (plyr\_\*).
      sig { returns(String) }
      attr_accessor :benefit_plan_year_id

      # Filter by election status. Repeat the parameter to match several.
      sig do
        returns(
          T.nilable(
            T::Array[
              VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::OrSymbol
            ]
          )
        )
      end
      attr_reader :election_status

      sig do
        params(
          election_status:
            T::Array[
              VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::OrSymbol
            ]
        ).void
      end
      attr_writer :election_status

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

      # Case-insensitive search. Matches member name partially, and the `member_id`
      # exactly — either your own reference id or the prefixed `grpmbr_<...>` id.
      sig { returns(T.nilable(String)) }
      attr_reader :search

      sig { params(search: String).void }
      attr_writer :search

      sig do
        params(
          employer_id: String,
          benefit_plan_year_id: String,
          election_status:
            T::Array[
              VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::OrSymbol
            ],
          limit: Integer,
          page: Integer,
          search: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # Unique benefit-plan-year identifier (plyr\_\*).
        benefit_plan_year_id:,
        # Filter by election status. Repeat the parameter to match several.
        election_status: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Case-insensitive search. Matches member name partially, and the `member_id`
        # exactly — either your own reference id or the prefixed `grpmbr_<...>` id.
        search: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            benefit_plan_year_id: String,
            election_status:
              T::Array[
                VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::OrSymbol
              ],
            limit: Integer,
            page: Integer,
            search: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      module ElectionStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLLED =
          T.let(
            :Enrolled,
            VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :Expired,
            VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :Pending,
            VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::TaggedSymbol
          )
        WAIVED =
          T.let(
            :Waived,
            VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
