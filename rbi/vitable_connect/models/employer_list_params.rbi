# typed: strong

module VitableConnect
  module Models
    class EmployerListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerListParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Filter to employers with at least one active benefit in these families.
      sig do
        returns(
          T.nilable(
            T::Array[
              VitableConnect::EmployerListParams::BenefitFamily::OrSymbol
            ]
          )
        )
      end
      attr_reader :benefit_family

      sig do
        params(
          benefit_family:
            T::Array[
              VitableConnect::EmployerListParams::BenefitFamily::OrSymbol
            ]
        ).void
      end
      attr_writer :benefit_family

      # Filter to employers in one of these computed benefit-lifecycle stages.
      sig do
        returns(
          T.nilable(
            T::Array[
              VitableConnect::EmployerListParams::BenefitLifecycleStage::OrSymbol
            ]
          )
        )
      end
      attr_reader :benefit_lifecycle_stage

      sig do
        params(
          benefit_lifecycle_stage:
            T::Array[
              VitableConnect::EmployerListParams::BenefitLifecycleStage::OrSymbol
            ]
        ).void
      end
      attr_writer :benefit_lifecycle_stage

      # Filter to employers whose HRIS connection is with one of these payroll providers
      # (e.g. `ADP RUN`). Matched case-insensitively; free text, so read the available
      # values from the HRIS-providers endpoint rather than assuming a fixed set.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :hris_provider

      sig { params(hris_provider: T::Array[String]).void }
      attr_writer :hris_provider

      # Filter to employers whose HRIS connection is in one of these statuses.
      sig do
        returns(
          T.nilable(
            T::Array[VitableConnect::EmployerListParams::HRISStatus::OrSymbol]
          )
        )
      end
      attr_reader :hris_status

      sig do
        params(
          hris_status:
            T::Array[VitableConnect::EmployerListParams::HRISStatus::OrSymbol]
        ).void
      end
      attr_writer :hris_status

      # Include cancelled employers (hidden by default unless their stage is explicitly
      # requested).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_cancelled

      sig { params(include_cancelled: T::Boolean).void }
      attr_writer :include_cancelled

      # Items per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Page number.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Employer filter. Matches the display name or the legal name case-insensitively
      # as a substring, or one of these exactly: the EIN (with or without its dash), the
      # employer id, or the contact email of one of the employer's non-disabled admins.
      sig { returns(T.nilable(String)) }
      attr_accessor :search

      sig do
        params(
          benefit_family:
            T::Array[
              VitableConnect::EmployerListParams::BenefitFamily::OrSymbol
            ],
          benefit_lifecycle_stage:
            T::Array[
              VitableConnect::EmployerListParams::BenefitLifecycleStage::OrSymbol
            ],
          hris_provider: T::Array[String],
          hris_status:
            T::Array[VitableConnect::EmployerListParams::HRISStatus::OrSymbol],
          include_cancelled: T::Boolean,
          limit: Integer,
          page: Integer,
          search: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter to employers with at least one active benefit in these families.
        benefit_family: nil,
        # Filter to employers in one of these computed benefit-lifecycle stages.
        benefit_lifecycle_stage: nil,
        # Filter to employers whose HRIS connection is with one of these payroll providers
        # (e.g. `ADP RUN`). Matched case-insensitively; free text, so read the available
        # values from the HRIS-providers endpoint rather than assuming a fixed set.
        hris_provider: nil,
        # Filter to employers whose HRIS connection is in one of these statuses.
        hris_status: nil,
        # Include cancelled employers (hidden by default unless their stage is explicitly
        # requested).
        include_cancelled: nil,
        # Items per page.
        limit: nil,
        # Page number.
        page: nil,
        # Employer filter. Matches the display name or the legal name case-insensitively
        # as a substring, or one of these exactly: the EIN (with or without its dash), the
        # employer id, or the contact email of one of the employer's non-disabled admins.
        search: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            benefit_family:
              T::Array[
                VitableConnect::EmployerListParams::BenefitFamily::OrSymbol
              ],
            benefit_lifecycle_stage:
              T::Array[
                VitableConnect::EmployerListParams::BenefitLifecycleStage::OrSymbol
              ],
            hris_provider: T::Array[String],
            hris_status:
              T::Array[
                VitableConnect::EmployerListParams::HRISStatus::OrSymbol
              ],
            include_cancelled: T::Boolean,
            limit: Integer,
            page: Integer,
            search: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `mec` - mec
      # - `mvp` - mvp
      # - `ichra` - ichra
      # - `vpc` - vpc
      # - `dental` - dental
      # - `vision` - vision
      module BenefitFamily
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::EmployerListParams::BenefitFamily)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MEC =
          T.let(
            :mec,
            VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
          )
        MVP =
          T.let(
            :mvp,
            VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
          )
        ICHRA =
          T.let(
            :ichra,
            VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
          )
        VPC =
          T.let(
            :vpc,
            VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
          )
        DENTAL =
          T.let(
            :dental,
            VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
          )
        VISION =
          T.let(
            :vision,
            VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerListParams::BenefitFamily::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `open_enrollment` - open_enrollment
      # - `renewal` - renewal
      # - `active` - active
      # - `onboarding` - onboarding
      # - `cancelled` - cancelled
      module BenefitLifecycleStage
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerListParams::BenefitLifecycleStage
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN_ENROLLMENT =
          T.let(
            :open_enrollment,
            VitableConnect::EmployerListParams::BenefitLifecycleStage::TaggedSymbol
          )
        RENEWAL =
          T.let(
            :renewal,
            VitableConnect::EmployerListParams::BenefitLifecycleStage::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            VitableConnect::EmployerListParams::BenefitLifecycleStage::TaggedSymbol
          )
        ONBOARDING =
          T.let(
            :onboarding,
            VitableConnect::EmployerListParams::BenefitLifecycleStage::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            VitableConnect::EmployerListParams::BenefitLifecycleStage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerListParams::BenefitLifecycleStage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `Pending` - Pending
      # - `Active` - Active
      # - `Inactive` - Inactive
      # - `Paused` - Paused
      # - `Terminated` - Terminated
      module HRISStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::EmployerListParams::HRISStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :Pending,
            VitableConnect::EmployerListParams::HRISStatus::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :Active,
            VitableConnect::EmployerListParams::HRISStatus::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :Inactive,
            VitableConnect::EmployerListParams::HRISStatus::TaggedSymbol
          )
        PAUSED =
          T.let(
            :Paused,
            VitableConnect::EmployerListParams::HRISStatus::TaggedSymbol
          )
        TERMINATED =
          T.let(
            :Terminated,
            VitableConnect::EmployerListParams::HRISStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerListParams::HRISStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
