# typed: strong

module VitableConnect
  module Models
    class MemberRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberRetrieveResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # A member's profile: identity, contact details, address, demographics, and
      # onboarding status.
      sig { returns(VitableConnect::Models::MemberRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: VitableConnect::Models::MemberRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single member resource.
      sig do
        params(
          data: VitableConnect::Models::MemberRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A member's profile: identity, contact details, address, demographics, and
        # onboarding status.
        data:
      )
      end

      sig do
        override.returns(
          { data: VitableConnect::Models::MemberRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberRetrieveResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Member's age in years, derived from date of birth
        sig { returns(Integer) }
        attr_accessor :age

        # Date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Member's legal first name
        sig { returns(String) }
        attr_accessor :first_name

        # Member's legal last name
        sig { returns(String) }
        attr_accessor :last_name

        # Member's residential address
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::OrHash
              )
          ).void
        end
        attr_writer :address

        # Email address
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # - `Male` - Male
        # - `Female` - Female
        # - `Transgender` - Transgender
        # - `Non-binary` - Non Binary
        # - `Prefer not to respond` - Prefer Not To Respond
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
            )
          )
        end
        attr_accessor :gender

        # - `Single` - Single
        # - `Married` - Married
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus::TaggedSymbol
            )
          )
        end
        attr_accessor :marital_status

        # Member's legal middle name
        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

        # Phone number (10-digit US domestic string)
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # - `en` - English
        # - `es` - Spanish
        # - `zh` - Chinese
        # - `ru` - Russian
        # - `sw` - Swahili
        # - `th` - Thai
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )
          )
        end
        attr_accessor :preferred_language

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
            )
          )
        end
        attr_accessor :sex_at_birth

        # - `Sr` - Sr
        # - `Jr` - Jr
        # - `I` - I
        # - `II` - II
        # - `III` - III
        # - `IV` - IV
        # - `V` - V
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          )
        end
        attr_accessor :suffix

        # Whether the member uses tobacco, if known
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tobacco_status

        # Unique member identifier with 'mbr\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # Member's full legal name
        sig { returns(String) }
        attr_accessor :name

        # Member profile status (onboarded or pending onboarding)
        sig do
          returns(
            VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # A member's profile: identity, contact details, address, demographics, and
        # onboarding status.
        sig do
          params(
            id: String,
            age: Integer,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            name: String,
            status:
              VitableConnect::Models::MemberRetrieveResponse::Data::Status::OrSymbol,
            address:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::OrHash
              ),
            email: T.nilable(String),
            gender:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::Gender::OrSymbol
              ),
            marital_status:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus::OrSymbol
              ),
            middle_name: T.nilable(String),
            phone: T.nilable(String),
            preferred_language:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::OrSymbol
              ),
            sex_at_birth:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::OrSymbol
              ),
            suffix:
              T.nilable(
                VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::OrSymbol
              ),
            tobacco_status: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique member identifier with 'mbr\_' prefix
          id:,
          # Member's age in years, derived from date of birth
          age:,
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Member's legal first name
          first_name:,
          # Member's legal last name
          last_name:,
          # Member's full legal name
          name:,
          # Member profile status (onboarded or pending onboarding)
          status:,
          # Member's residential address
          address: nil,
          # Email address
          email: nil,
          # - `Male` - Male
          # - `Female` - Female
          # - `Transgender` - Transgender
          # - `Non-binary` - Non Binary
          # - `Prefer not to respond` - Prefer Not To Respond
          gender: nil,
          # - `Single` - Single
          # - `Married` - Married
          marital_status: nil,
          # Member's legal middle name
          middle_name: nil,
          # Phone number (10-digit US domestic string)
          phone: nil,
          # - `en` - English
          # - `es` - Spanish
          # - `zh` - Chinese
          # - `ru` - Russian
          # - `sw` - Swahili
          # - `th` - Thai
          preferred_language: nil,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex_at_birth: nil,
          # - `Sr` - Sr
          # - `Jr` - Jr
          # - `I` - I
          # - `II` - II
          # - `III` - III
          # - `IV` - IV
          # - `V` - V
          suffix: nil,
          # Whether the member uses tobacco, if known
          tobacco_status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              age: Integer,
              date_of_birth: Date,
              first_name: String,
              last_name: String,
              name: String,
              status:
                VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol,
              address:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::Address
                ),
              email: T.nilable(String),
              gender:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
                ),
              marital_status:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus::TaggedSymbol
                ),
              middle_name: T.nilable(String),
              phone: T.nilable(String),
              preferred_language:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
                ),
              sex_at_birth:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
                ),
              suffix:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
                ),
              tobacco_status: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        # Member profile status (onboarded or pending onboarding)
        module Status
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONBOARDED =
            T.let(
              :onboarded,
              VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
            )
          PENDING_ONBOARDING =
            T.let(
              :pending_onboarding,
              VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Address < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::MemberRetrieveResponse::Data::Address,
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
              VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
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
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::OrSymbol,
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
                  VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol,
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
                  VitableConnect::Models::MemberRetrieveResponse::Data::Address::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AL =
              T.let(
                :AL,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AK =
              T.let(
                :AK,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AZ =
              T.let(
                :AZ,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AR =
              T.let(
                :AR,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            CA =
              T.let(
                :CA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            CO =
              T.let(
                :CO,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            CT =
              T.let(
                :CT,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            DC =
              T.let(
                :DC,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            DE =
              T.let(
                :DE,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            FL =
              T.let(
                :FL,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            GA =
              T.let(
                :GA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            HI =
              T.let(
                :HI,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            ID =
              T.let(
                :ID,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            IL =
              T.let(
                :IL,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            IN =
              T.let(
                :IN,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            IA =
              T.let(
                :IA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            KS =
              T.let(
                :KS,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            KY =
              T.let(
                :KY,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            LA =
              T.let(
                :LA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            ME =
              T.let(
                :ME,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MD =
              T.let(
                :MD,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MA =
              T.let(
                :MA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MI =
              T.let(
                :MI,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MN =
              T.let(
                :MN,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MS =
              T.let(
                :MS,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MO =
              T.let(
                :MO,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MT =
              T.let(
                :MT,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NE =
              T.let(
                :NE,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NV =
              T.let(
                :NV,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NH =
              T.let(
                :NH,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NJ =
              T.let(
                :NJ,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NM =
              T.let(
                :NM,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NY =
              T.let(
                :NY,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            NC =
              T.let(
                :NC,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            ND =
              T.let(
                :ND,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            OH =
              T.let(
                :OH,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            OK =
              T.let(
                :OK,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            OR =
              T.let(
                :OR,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            PA =
              T.let(
                :PA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            RI =
              T.let(
                :RI,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            SC =
              T.let(
                :SC,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            SD =
              T.let(
                :SD,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            TN =
              T.let(
                :TN,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            TX =
              T.let(
                :TX,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            UT =
              T.let(
                :UT,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            VT =
              T.let(
                :VT,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            VA =
              T.let(
                :VA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            WA =
              T.let(
                :WA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            WI =
              T.let(
                :WI,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            WV =
              T.let(
                :WV,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            WY =
              T.let(
                :WY,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            PR =
              T.let(
                :PR,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            GU =
              T.let(
                :GU,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AS =
              T.let(
                :AS,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            VI =
              T.let(
                :VI,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MP =
              T.let(
                :MP,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            MH =
              T.let(
                :MH,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            PW =
              T.let(
                :PW,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            FM =
              T.let(
                :FM,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AE =
              T.let(
                :AE,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AA =
              T.let(
                :AA,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )
            AP =
              T.let(
                :AP,
                VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitableConnect::Models::MemberRetrieveResponse::Data::Address::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # - `Male` - Male
        # - `Female` - Female
        # - `Transgender` - Transgender
        # - `Non-binary` - Non Binary
        # - `Prefer not to respond` - Prefer Not To Respond
        module Gender
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::Gender
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :Male,
              VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
            )
          FEMALE =
            T.let(
              :Female,
              VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
            )
          TRANSGENDER =
            T.let(
              :Transgender,
              VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
            )
          NON_BINARY =
            T.let(
              :"Non-binary",
              VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
            )
          PREFER_NOT_TO_RESPOND =
            T.let(
              :"Prefer not to respond",
              VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `Single` - Single
        # - `Married` - Married
        module MaritalStatus
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :Single,
              VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus::TaggedSymbol
            )
          MARRIED =
            T.let(
              :Married,
              VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::MaritalStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `en` - English
        # - `es` - Spanish
        # - `zh` - Chinese
        # - `ru` - Russian
        # - `sw` - Swahili
        # - `th` - Thai
        module PreferredLanguage
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :en,
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        module SexAtBirth
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :Male,
              VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
            )
          FEMALE =
            T.let(
              :Female,
              VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
            )
          OTHER =
            T.let(
              :Other,
              VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :Unknown,
              VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `Sr` - Sr
        # - `Jr` - Jr
        # - `I` - I
        # - `II` - II
        # - `III` - III
        # - `IV` - IV
        # - `V` - V
        module Suffix
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveResponse::Data::Suffix
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SR =
            T.let(
              :Sr,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          JR =
            T.let(
              :Jr,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          I =
            T.let(
              :I,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          II =
            T.let(
              :II,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          III =
            T.let(
              :III,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          IV =
            T.let(
              :IV,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )
          V =
            T.let(
              :V,
              VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveResponse::Data::Suffix::TaggedSymbol
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
