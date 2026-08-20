# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_id_cards
    class MemberListIDCardsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::MemberListIDCardsResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberListIDCardsResponse::Data] }

      # @!method initialize(data:)
      #   Unpaginated `{"data": [...]}` list of member digital benefit cards.
      #
      #   @param data [Array<VitableConnect::Models::MemberListIDCardsResponse::Data>]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute card_type
        #   - `medical` - medical
        #   - `dental` - dental
        #   - `vision` - vision
        #   - `rx` - rx
        #
        #   @return [Symbol, VitableConnect::Models::MemberListIDCardsResponse::Data::CardType]
        required :card_type, enum: -> { VitableConnect::Models::MemberListIDCardsResponse::Data::CardType }

        # @!attribute group_id
        #   Group number printed on the card (the rx group id for an rx card)
        #
        #   @return [String]
        required :group_id, String

        # @!attribute group_member_id
        #   Member id printed on the card (the Ventegra cardholder id for an rx card)
        #
        #   @return [String]
        required :group_member_id, String

        # @!attribute member_name
        #   Name of the member the card is issued to
        #
        #   @return [String]
        required :member_name, String

        # @!attribute nsa_table
        #   No Surprises Act cost-sharing table rendered on the card; empty for an rx card
        #
        #   @return [Array<Array<String>>]
        required :nsa_table,
                 VitableConnect::Internal::Type::ArrayOf[VitableConnect::Internal::Type::ArrayOf[String]]

        # @!attribute benefit_code
        #   - `EBA` - Eba Mec
        #   - `VPC` - Vpc Enhanced
        #   - `VPC_CORE` - Vpc Core
        #   - `MEC` - Vpc Mec
        #   - `MEC2` - Mec2
        #   - `MEC_PLUS` - Mec Plus
        #   - `MVP` - Mvp
        #   - `MVP2` - Mvp2
        #   - `MVPSL` - Mvpsl
        #   - `MVPSL2` - Mvpsl2
        #   - `VD` - Dental
        #   - `VV` - Vision
        #   - `ICHRA` - Ichra
        #   - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
        #   - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
        #
        #   @return [Symbol, VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode, nil]
        optional :benefit_code,
                 enum: -> { VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode },
                 nil?: true

        # @!attribute carrier_phone
        #   Carrier phone number on the card; null for an rx card
        #
        #   @return [String, nil]
        optional :carrier_phone, String, nil?: true

        # @!attribute carrier_website
        #   Carrier website on the card; null for an rx card
        #
        #   @return [String, nil]
        optional :carrier_website, String, nil?: true

        # @!attribute claims_payer_display_name
        #   Claims payer shown on the card
        #
        #   @return [String, nil]
        optional :claims_payer_display_name, String, nil?: true

        # @!attribute employer_name
        #   Employer the card's coverage is through; null for an rx card without group info
        #
        #   @return [String, nil]
        optional :employer_name, String, nil?: true

        # @!attribute general_disclaimer
        #   General disclaimer text; null for an rx card
        #
        #   @return [String, nil]
        optional :general_disclaimer, String, nil?: true

        # @!attribute network
        #   Provider network shown on the card; null for an rx card
        #
        #   @return [VitableConnect::Models::MemberListIDCardsResponse::Data::Network, nil]
        optional :network, -> { VitableConnect::Models::MemberListIDCardsResponse::Data::Network }, nil?: true

        # @!attribute plan_disclaimer
        #   Plan-specific disclaimer text; null for an rx card
        #
        #   @return [String, nil]
        optional :plan_disclaimer, String, nil?: true

        # @!attribute plan_name
        #   Benefit plan name on the card; null for a consumer-membership rx card
        #
        #   @return [String, nil]
        optional :plan_name, String, nil?: true

        # @!method initialize(card_type:, group_id:, group_member_id:, member_name:, nsa_table:, benefit_code: nil, carrier_phone: nil, carrier_website: nil, claims_payer_display_name: nil, employer_name: nil, general_disclaimer: nil, network: nil, plan_disclaimer: nil, plan_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::MemberListIDCardsResponse::Data} for more details.
        #
        #   Wire serializer for :class:`DigitalBenefitCardDTO` (one benefit ID card).
        #
        #   @param card_type [Symbol, VitableConnect::Models::MemberListIDCardsResponse::Data::CardType] - `medical` - medical
        #
        #   @param group_id [String] Group number printed on the card (the rx group id for an rx card)
        #
        #   @param group_member_id [String] Member id printed on the card (the Ventegra cardholder id for an rx card)
        #
        #   @param member_name [String] Name of the member the card is issued to
        #
        #   @param nsa_table [Array<Array<String>>] No Surprises Act cost-sharing table rendered on the card; empty for an rx card
        #
        #   @param benefit_code [Symbol, VitableConnect::Models::MemberListIDCardsResponse::Data::BenefitCode, nil] - `EBA` - Eba Mec
        #
        #   @param carrier_phone [String, nil] Carrier phone number on the card; null for an rx card
        #
        #   @param carrier_website [String, nil] Carrier website on the card; null for an rx card
        #
        #   @param claims_payer_display_name [String, nil] Claims payer shown on the card
        #
        #   @param employer_name [String, nil] Employer the card's coverage is through; null for an rx card without group info
        #
        #   @param general_disclaimer [String, nil] General disclaimer text; null for an rx card
        #
        #   @param network [VitableConnect::Models::MemberListIDCardsResponse::Data::Network, nil] Provider network shown on the card; null for an rx card
        #
        #   @param plan_disclaimer [String, nil] Plan-specific disclaimer text; null for an rx card
        #
        #   @param plan_name [String, nil] Benefit plan name on the card; null for a consumer-membership rx card

        # - `medical` - medical
        # - `dental` - dental
        # - `vision` - vision
        # - `rx` - rx
        #
        # @see VitableConnect::Models::MemberListIDCardsResponse::Data#card_type
        module CardType
          extend VitableConnect::Internal::Type::Enum

          MEDICAL = :medical
          DENTAL = :dental
          VISION = :vision
          RX = :rx

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        # @see VitableConnect::Models::MemberListIDCardsResponse::Data#benefit_code
        module BenefitCode
          extend VitableConnect::Internal::Type::Enum

          EBA = :EBA
          VPC = :VPC
          VPC_CORE = :VPC_CORE
          MEC = :MEC
          MEC2 = :MEC2
          MEC_PLUS = :MEC_PLUS
          MVP = :MVP
          MVP2 = :MVP2
          MVPSL = :MVPSL
          MVPSL2 = :MVPSL2
          VD = :VD
          VV = :VV
          ICHRA = :ICHRA
          ICHRA_PREMIUM_PLUS = :ICHRA_PREMIUM_PLUS
          ICHRA_REIMBURSEMENT_ONLY = :ICHRA_REIMBURSEMENT_ONLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitableConnect::Models::MemberListIDCardsResponse::Data#network
        class Network < VitableConnect::Internal::Type::BaseModel
          # @!attribute address
          #   Shared read serializer for a postal address on public API responses.
          #
          #   One definition for the address block every public resource emits (employer,
          #   employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
          #   renders an already-built address value object (e.g. `AddressDVO`) whose
          #   attributes map 1:1 to these fields.
          #
          #   @return [VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address]
          required :address, -> { VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address }

          # @!attribute logo
          #
          #   @return [String, nil]
          required :logo, String, nil?: true

          # @!attribute member_phone
          #
          #   @return [String, nil]
          required :member_phone, String, nil?: true

          # @!attribute name
          #   Name of the network
          #
          #   @return [String]
          required :name, String

          # @!attribute phone
          #
          #   @return [String]
          required :phone, String

          # @!attribute provider_phone
          #
          #   @return [String, nil]
          required :provider_phone, String, nil?: true

          # @!attribute website
          #   Website of the network
          #
          #   @return [String]
          required :website, String

          # @!attribute edi
          #   Network's EDI
          #
          #   @return [String, nil]
          optional :edi, String, nil?: true

          # @!attribute member_website
          #   Website for members
          #
          #   @return [String, nil]
          optional :member_website, String, nil?: true

          # @!attribute provider_website
          #   Website for providers
          #
          #   @return [String, nil]
          optional :provider_website, String, nil?: true

          response_only do
            # @!attribute id
            #
            #   @return [String]
            required :id, String
          end

          # @!method initialize(id:, address:, logo:, member_phone:, name:, phone:, provider_phone:, website:, edi: nil, member_website: nil, provider_website: nil)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::MemberListIDCardsResponse::Data::Network} for more
          #   details.
          #
          #   Provider network shown on the card; null for an rx card
          #
          #   @param id [String]
          #
          #   @param address [VitableConnect::Models::MemberListIDCardsResponse::Data::Network::Address] Shared read serializer for a postal address on public API responses.
          #
          #   @param logo [String, nil]
          #
          #   @param member_phone [String, nil]
          #
          #   @param name [String] Name of the network
          #
          #   @param phone [String]
          #
          #   @param provider_phone [String, nil]
          #
          #   @param website [String] Website of the network
          #
          #   @param edi [String, nil] Network's EDI
          #
          #   @param member_website [String, nil] Website for members
          #
          #   @param provider_website [String, nil] Website for providers

          # @see VitableConnect::Models::MemberListIDCardsResponse::Data::Network#address
          class Address < VitableConnect::Internal::Type::BaseModel
            # @!attribute address_line_1
            #   Primary street address.
            #
            #   @return [String]
            required :address_line_1, String

            # @!attribute address_line_2
            #   Secondary street address (apt, suite, etc.).
            #
            #   @return [String, nil]
            required :address_line_2, String, nil?: true

            # @!attribute city
            #   City name.
            #
            #   @return [String]
            required :city, String

            # @!attribute state
            #   Two-letter state code (e.g. `CA`, `NY`).
            #
            #   @return [String]
            required :state, String

            # @!attribute zipcode
            #   ZIP code (5 or 9 digit).
            #
            #   @return [String]
            required :zipcode, String

            # @!method initialize(address_line_1:, address_line_2:, city:, state:, zipcode:)
            #   Shared read serializer for a postal address on public API responses.
            #
            #   One definition for the address block every public resource emits (employer,
            #   employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
            #   renders an already-built address value object (e.g. `AddressDVO`) whose
            #   attributes map 1:1 to these fields.
            #
            #   @param address_line_1 [String] Primary street address.
            #
            #   @param address_line_2 [String, nil] Secondary street address (apt, suite, etc.).
            #
            #   @param city [String] City name.
            #
            #   @param state [String] Two-letter state code (e.g. `CA`, `NY`).
            #
            #   @param zipcode [String] ZIP code (5 or 9 digit).
          end
        end
      end
    end
  end
end
