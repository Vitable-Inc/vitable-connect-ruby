# typed: strong

module VitableConnect
  module Models
    class MemberListResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Member's legal first name
      sig { returns(String) }
      attr_accessor :first_name

      # Member's legal last name
      sig { returns(String) }
      attr_accessor :last_name

      # Member's residential address
      sig do
        returns(T.nilable(VitableConnect::Models::MemberListResponse::Address))
      end
      attr_reader :address

      sig do
        params(
          address:
            T.nilable(
              VitableConnect::Models::MemberListResponse::Address::OrHash
            )
        ).void
      end
      attr_writer :address

      # Email address
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Phone number (10-digit US domestic string)
      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # Unique member identifier with 'mbr\_' prefix
      sig { returns(String) }
      attr_accessor :id

      # A member in the organization's directory: identity, contact details, address,
      # and join date.
      sig do
        params(
          id: String,
          first_name: String,
          last_name: String,
          address:
            T.nilable(
              VitableConnect::Models::MemberListResponse::Address::OrHash
            ),
          email: T.nilable(String),
          phone: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique member identifier with 'mbr\_' prefix
        id:,
        # Member's legal first name
        first_name:,
        # Member's legal last name
        last_name:,
        # Member's residential address
        address: nil,
        # Email address
        email: nil,
        # Phone number (10-digit US domestic string)
        phone: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            first_name: String,
            last_name: String,
            address:
              T.nilable(VitableConnect::Models::MemberListResponse::Address),
            email: T.nilable(String),
            phone: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Address < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberListResponse::Address,
              VitableConnect::Internal::AnyHash
            )
          end

        # Primary street address
        sig { returns(String) }
        attr_accessor :address_line_1

        # City name
        sig { returns(String) }
        attr_accessor :city

        # - `AL` - AL
        # - `AK` - AK
        # - `AZ` - AZ
        # - `AR` - AR
        # - `CA` - CA
        # - `CO` - CO
        # - `CT` - CT
        # - `DC` - DC
        # - `DE` - DE
        # - `FL` - FL
        # - `GA` - GA
        # - `HI` - HI
        # - `ID` - ID
        # - `IL` - IL
        # - `IN` - IN
        # - `IA` - IA
        # - `KS` - KS
        # - `KY` - KY
        # - `LA` - LA
        # - `ME` - ME
        # - `MD` - MD
        # - `MA` - MA
        # - `MI` - MI
        # - `MN` - MN
        # - `MS` - MS
        # - `MO` - MO
        # - `MT` - MT
        # - `NE` - NE
        # - `NV` - NV
        # - `NH` - NH
        # - `NJ` - NJ
        # - `NM` - NM
        # - `NY` - NY
        # - `NC` - NC
        # - `ND` - ND
        # - `OH` - OH
        # - `OK` - OK
        # - `OR` - OR
        # - `PA` - PA
        # - `RI` - RI
        # - `SC` - SC
        # - `SD` - SD
        # - `TN` - TN
        # - `TX` - TX
        # - `UT` - UT
        # - `VT` - VT
        # - `VA` - VA
        # - `WA` - WA
        # - `WI` - WI
        # - `WV` - WV
        # - `WY` - WY
        # - `PR` - PR
        # - `GU` - GU
        # - `AS` - AS
        # - `VI` - VI
        # - `MP` - MP
        # - `MH` - MH
        # - `PW` - PW
        # - `FM` - FM
        # - `AE` - AE
        # - `AA` - AA
        # - `AP` - AP
        sig do
          returns(
            VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
          )
        end
        attr_accessor :state

        # ZIP code (5 or 9 digit)
        sig { returns(String) }
        attr_accessor :zipcode

        # Secondary street address (apt, suite, etc.)
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line_2

        # Member's residential address
        sig do
          params(
            address_line_1: String,
            city: String,
            state:
              VitableConnect::Models::MemberListResponse::Address::State::OrSymbol,
            zipcode: String,
            address_line_2: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Primary street address
          address_line_1:,
          # City name
          city:,
          # - `AL` - AL
          # - `AK` - AK
          # - `AZ` - AZ
          # - `AR` - AR
          # - `CA` - CA
          # - `CO` - CO
          # - `CT` - CT
          # - `DC` - DC
          # - `DE` - DE
          # - `FL` - FL
          # - `GA` - GA
          # - `HI` - HI
          # - `ID` - ID
          # - `IL` - IL
          # - `IN` - IN
          # - `IA` - IA
          # - `KS` - KS
          # - `KY` - KY
          # - `LA` - LA
          # - `ME` - ME
          # - `MD` - MD
          # - `MA` - MA
          # - `MI` - MI
          # - `MN` - MN
          # - `MS` - MS
          # - `MO` - MO
          # - `MT` - MT
          # - `NE` - NE
          # - `NV` - NV
          # - `NH` - NH
          # - `NJ` - NJ
          # - `NM` - NM
          # - `NY` - NY
          # - `NC` - NC
          # - `ND` - ND
          # - `OH` - OH
          # - `OK` - OK
          # - `OR` - OR
          # - `PA` - PA
          # - `RI` - RI
          # - `SC` - SC
          # - `SD` - SD
          # - `TN` - TN
          # - `TX` - TX
          # - `UT` - UT
          # - `VT` - VT
          # - `VA` - VA
          # - `WA` - WA
          # - `WI` - WI
          # - `WV` - WV
          # - `WY` - WY
          # - `PR` - PR
          # - `GU` - GU
          # - `AS` - AS
          # - `VI` - VI
          # - `MP` - MP
          # - `MH` - MH
          # - `PW` - PW
          # - `FM` - FM
          # - `AE` - AE
          # - `AA` - AA
          # - `AP` - AP
          state:,
          # ZIP code (5 or 9 digit)
          zipcode:,
          # Secondary street address (apt, suite, etc.)
          address_line_2: nil
        )
        end

        sig do
          override.returns(
            {
              address_line_1: String,
              city: String,
              state:
                VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol,
              zipcode: String,
              address_line_2: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # - `AL` - AL
        # - `AK` - AK
        # - `AZ` - AZ
        # - `AR` - AR
        # - `CA` - CA
        # - `CO` - CO
        # - `CT` - CT
        # - `DC` - DC
        # - `DE` - DE
        # - `FL` - FL
        # - `GA` - GA
        # - `HI` - HI
        # - `ID` - ID
        # - `IL` - IL
        # - `IN` - IN
        # - `IA` - IA
        # - `KS` - KS
        # - `KY` - KY
        # - `LA` - LA
        # - `ME` - ME
        # - `MD` - MD
        # - `MA` - MA
        # - `MI` - MI
        # - `MN` - MN
        # - `MS` - MS
        # - `MO` - MO
        # - `MT` - MT
        # - `NE` - NE
        # - `NV` - NV
        # - `NH` - NH
        # - `NJ` - NJ
        # - `NM` - NM
        # - `NY` - NY
        # - `NC` - NC
        # - `ND` - ND
        # - `OH` - OH
        # - `OK` - OK
        # - `OR` - OR
        # - `PA` - PA
        # - `RI` - RI
        # - `SC` - SC
        # - `SD` - SD
        # - `TN` - TN
        # - `TX` - TX
        # - `UT` - UT
        # - `VT` - VT
        # - `VA` - VA
        # - `WA` - WA
        # - `WI` - WI
        # - `WV` - WV
        # - `WY` - WY
        # - `PR` - PR
        # - `GU` - GU
        # - `AS` - AS
        # - `VI` - VI
        # - `MP` - MP
        # - `MH` - MH
        # - `PW` - PW
        # - `FM` - FM
        # - `AE` - AE
        # - `AA` - AA
        # - `AP` - AP
        module State
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberListResponse::Address::State
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AL =
            T.let(
              :AL,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AK =
            T.let(
              :AK,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AZ =
            T.let(
              :AZ,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AR =
            T.let(
              :AR,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          CA =
            T.let(
              :CA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          CO =
            T.let(
              :CO,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          CT =
            T.let(
              :CT,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          DC =
            T.let(
              :DC,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          FL =
            T.let(
              :FL,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          GA =
            T.let(
              :GA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          HI =
            T.let(
              :HI,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          ID =
            T.let(
              :ID,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          IL =
            T.let(
              :IL,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          IN =
            T.let(
              :IN,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          IA =
            T.let(
              :IA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          KS =
            T.let(
              :KS,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          KY =
            T.let(
              :KY,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          LA =
            T.let(
              :LA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          ME =
            T.let(
              :ME,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MD =
            T.let(
              :MD,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MA =
            T.let(
              :MA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MI =
            T.let(
              :MI,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MN =
            T.let(
              :MN,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MS =
            T.let(
              :MS,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MO =
            T.let(
              :MO,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MT =
            T.let(
              :MT,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NE =
            T.let(
              :NE,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NV =
            T.let(
              :NV,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NH =
            T.let(
              :NH,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NJ =
            T.let(
              :NJ,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NM =
            T.let(
              :NM,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NY =
            T.let(
              :NY,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          NC =
            T.let(
              :NC,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          ND =
            T.let(
              :ND,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          OH =
            T.let(
              :OH,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          OK =
            T.let(
              :OK,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          OR =
            T.let(
              :OR,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          PA =
            T.let(
              :PA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          RI =
            T.let(
              :RI,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          SC =
            T.let(
              :SC,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          SD =
            T.let(
              :SD,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          TN =
            T.let(
              :TN,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          TX =
            T.let(
              :TX,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          UT =
            T.let(
              :UT,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          VT =
            T.let(
              :VT,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          VA =
            T.let(
              :VA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          WA =
            T.let(
              :WA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          WI =
            T.let(
              :WI,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          WV =
            T.let(
              :WV,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          WY =
            T.let(
              :WY,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          PR =
            T.let(
              :PR,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          GU =
            T.let(
              :GU,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AS =
            T.let(
              :AS,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          VI =
            T.let(
              :VI,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MP =
            T.let(
              :MP,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          MH =
            T.let(
              :MH,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          PW =
            T.let(
              :PW,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          FM =
            T.let(
              :FM,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AE =
            T.let(
              :AE,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AA =
            T.let(
              :AA,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )
          AP =
            T.let(
              :AP,
              VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListResponse::Address::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
