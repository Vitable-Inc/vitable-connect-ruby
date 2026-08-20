# typed: strong

module VitableConnect
  module Models
    class MemberListIDCardsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListIDCardsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[VitableConnect::Models::MemberListIDCardsResponse::Data]
        )
      end
      attr_accessor :data

      # Unpaginated `{"data": [...]}` list of member digital benefit cards.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::MemberListIDCardsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[VitableConnect::Models::MemberListIDCardsResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberListIDCardsResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # - `medical` - medical
        # - `dental` - dental
        # - `vision` - vision
        # - `rx` - rx
        sig do
          returns(
            VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol
          )
        end
        attr_accessor :card_type

        # Group number printed on the card (the rx group id for an rx card)
        sig { returns(String) }
        attr_accessor :group_id

        # Member id printed on the card (the Ventegra cardholder id for an rx card)
        sig { returns(String) }
        attr_accessor :group_member_id

        # Name of the member the card is issued to
        sig { returns(String) }
        attr_accessor :member_name

        # No Surprises Act cost-sharing table rendered on the card; empty for an rx card
        sig { returns(T::Array[T::Array[String]]) }
        attr_accessor :nsa_table

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
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          )
        end
        attr_accessor :benefit_code

        # Carrier phone number on the card; null for an rx card
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier_phone

        # Carrier website on the card; null for an rx card
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier_website

        # Claims payer shown on the card
        sig { returns(T.nilable(String)) }
        attr_accessor :claims_payer_display_name

        # Employer the card's coverage is through; null for an rx card without group info
        sig { returns(T.nilable(String)) }
        attr_accessor :employer_name

        # General disclaimer text; null for an rx card
        sig { returns(T.nilable(String)) }
        attr_accessor :general_disclaimer

        # Provider network shown on the card; null for an rx card
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberListIDCardsResponse::Data::Network
            )
          )
        end
        attr_reader :network

        sig do
          params(
            network:
              T.nilable(
                VitableConnect::Models::MemberListIDCardsResponse::Data::Network::OrHash
              )
          ).void
        end
        attr_writer :network

        # Plan-specific disclaimer text; null for an rx card
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_disclaimer

        # Benefit plan name on the card; null for a consumer-membership rx card
        sig { returns(T.nilable(String)) }
        attr_accessor :plan_name

        # Wire serializer for :class:`DigitalBenefitCardDTO` (one benefit ID card).
        sig do
          params(
            card_type:
              VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::OrSymbol,
            group_id: String,
            group_member_id: String,
            member_name: String,
            nsa_table: T::Array[T::Array[String]],
            benefit_code:
              T.nilable(
                VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::OrSymbol
              ),
            carrier_phone: T.nilable(String),
            carrier_website: T.nilable(String),
            claims_payer_display_name: T.nilable(String),
            employer_name: T.nilable(String),
            general_disclaimer: T.nilable(String),
            network:
              T.nilable(
                VitableConnect::Models::MemberListIDCardsResponse::Data::Network::OrHash
              ),
            plan_disclaimer: T.nilable(String),
            plan_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # - `medical` - medical
          # - `dental` - dental
          # - `vision` - vision
          # - `rx` - rx
          card_type:,
          # Group number printed on the card (the rx group id for an rx card)
          group_id:,
          # Member id printed on the card (the Ventegra cardholder id for an rx card)
          group_member_id:,
          # Name of the member the card is issued to
          member_name:,
          # No Surprises Act cost-sharing table rendered on the card; empty for an rx card
          nsa_table:,
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
          benefit_code: nil,
          # Carrier phone number on the card; null for an rx card
          carrier_phone: nil,
          # Carrier website on the card; null for an rx card
          carrier_website: nil,
          # Claims payer shown on the card
          claims_payer_display_name: nil,
          # Employer the card's coverage is through; null for an rx card without group info
          employer_name: nil,
          # General disclaimer text; null for an rx card
          general_disclaimer: nil,
          # Provider network shown on the card; null for an rx card
          network: nil,
          # Plan-specific disclaimer text; null for an rx card
          plan_disclaimer: nil,
          # Benefit plan name on the card; null for a consumer-membership rx card
          plan_name: nil
        )
        end

        sig do
          override.returns(
            {
              card_type:
                VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol,
              group_id: String,
              group_member_id: String,
              member_name: String,
              nsa_table: T::Array[T::Array[String]],
              benefit_code:
                T.nilable(
                  VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
                ),
              carrier_phone: T.nilable(String),
              carrier_website: T.nilable(String),
              claims_payer_display_name: T.nilable(String),
              employer_name: T.nilable(String),
              general_disclaimer: T.nilable(String),
              network:
                T.nilable(
                  VitableConnect::Models::MemberListIDCardsResponse::Data::Network
                ),
              plan_disclaimer: T.nilable(String),
              plan_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # - `medical` - medical
        # - `dental` - dental
        # - `vision` - vision
        # - `rx` - rx
        module CardType
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberListIDCardsResponse::Data::CardType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEDICAL =
            T.let(
              :medical,
              VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol
            )
          DENTAL =
            T.let(
              :dental,
              VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol
            )
          VISION =
            T.let(
              :vision,
              VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol
            )
          RX =
            T.let(
              :rx,
              VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListIDCardsResponse::Data::CardType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

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
        module BenefitCode
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EBA =
            T.let(
              :EBA,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          VPC =
            T.let(
              :VPC,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          VPC_CORE =
            T.let(
              :VPC_CORE,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MEC =
            T.let(
              :MEC,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MEC2 =
            T.let(
              :MEC2,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MEC_PLUS =
            T.let(
              :MEC_PLUS,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MVP =
            T.let(
              :MVP,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MVP2 =
            T.let(
              :MVP2,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MVPSL =
            T.let(
              :MVPSL,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          MVPSL2 =
            T.let(
              :MVPSL2,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          VD =
            T.let(
              :VD,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          VV =
            T.let(
              :VV,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          ICHRA =
            T.let(
              :ICHRA,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          ICHRA_PREMIUM_PLUS =
            T.let(
              :ICHRA_PREMIUM_PLUS,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )
          ICHRA_REIMBURSEMENT_ONLY =
            T.let(
              :ICHRA_REIMBURSEMENT_ONLY,
              VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Network < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::MemberListIDCardsResponse::Data::Network,
                VitableConnect::Internal::AnyHash
              )
            end

          # Shared read serializer for a postal address on public API responses.
          #
          # One definition for the address block every public resource emits (employer,
          # employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
          # renders an already-built address value object (e.g. `AddressDVO`) whose
          # attributes map 1:1 to these fields.
          sig do
            returns(
              VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address
            )
          end
          attr_reader :address

          sig do
            params(
              address:
                VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address::OrHash
            ).void
          end
          attr_writer :address

          sig { returns(T.nilable(String)) }
          attr_accessor :logo

          sig { returns(T.nilable(String)) }
          attr_accessor :member_phone

          # Name of the network
          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :phone

          sig { returns(T.nilable(String)) }
          attr_accessor :provider_phone

          # Website of the network
          sig { returns(String) }
          attr_accessor :website

          # Network's EDI
          sig { returns(T.nilable(String)) }
          attr_accessor :edi

          # Website for members
          sig { returns(T.nilable(String)) }
          attr_accessor :member_website

          # Website for providers
          sig { returns(T.nilable(String)) }
          attr_accessor :provider_website

          sig { returns(String) }
          attr_accessor :id

          # Provider network shown on the card; null for an rx card
          sig do
            params(
              id: String,
              address:
                VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address::OrHash,
              logo: T.nilable(String),
              member_phone: T.nilable(String),
              name: String,
              phone: String,
              provider_phone: T.nilable(String),
              website: String,
              edi: T.nilable(String),
              member_website: T.nilable(String),
              provider_website: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Shared read serializer for a postal address on public API responses.
            #
            # One definition for the address block every public resource emits (employer,
            # employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
            # renders an already-built address value object (e.g. `AddressDVO`) whose
            # attributes map 1:1 to these fields.
            address:,
            logo:,
            member_phone:,
            # Name of the network
            name:,
            phone:,
            provider_phone:,
            # Website of the network
            website:,
            # Network's EDI
            edi: nil,
            # Website for members
            member_website: nil,
            # Website for providers
            provider_website: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                address:
                  VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address,
                logo: T.nilable(String),
                member_phone: T.nilable(String),
                name: String,
                phone: String,
                provider_phone: T.nilable(String),
                website: String,
                edi: T.nilable(String),
                member_website: T.nilable(String),
                provider_website: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Address < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address,
                  VitableConnect::Internal::AnyHash
                )
              end

            # Primary street address.
            sig { returns(String) }
            attr_accessor :address_line_1

            # Secondary street address (apt, suite, etc.).
            sig { returns(T.nilable(String)) }
            attr_accessor :address_line_2

            # City name.
            sig { returns(String) }
            attr_accessor :city

            # Two-letter state code (e.g. `CA`, `NY`).
            sig { returns(String) }
            attr_accessor :state

            # ZIP code (5 or 9 digit).
            sig { returns(String) }
            attr_accessor :zipcode

            # Shared read serializer for a postal address on public API responses.
            #
            # One definition for the address block every public resource emits (employer,
            # employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
            # renders an already-built address value object (e.g. `AddressDVO`) whose
            # attributes map 1:1 to these fields.
            sig do
              params(
                address_line_1: String,
                address_line_2: T.nilable(String),
                city: String,
                state: String,
                zipcode: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Primary street address.
              address_line_1:,
              # Secondary street address (apt, suite, etc.).
              address_line_2:,
              # City name.
              city:,
              # Two-letter state code (e.g. `CA`, `NY`).
              state:,
              # ZIP code (5 or 9 digit).
              zipcode:
            )
            end

            sig do
              override.returns(
                {
                  address_line_1: String,
                  address_line_2: T.nilable(String),
                  city: String,
                  state: String,
                  zipcode: String
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
end
