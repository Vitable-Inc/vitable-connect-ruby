# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#retrieve
    class MemberRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   A member's profile: identity, contact details, address, demographics, and
      #   onboarding status.
      #
      #   @return [VitableConnect::Models::MemberRetrieveResponse::Data]
      required :data, -> { VitableConnect::Models::MemberRetrieveResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::MemberRetrieveResponse} for more details.
      #
      #   Response containing a single member resource.
      #
      #   @param data [VitableConnect::Models::MemberRetrieveResponse::Data] A member's profile: identity, contact details, address, demographics, and onboar

      # @see VitableConnect::Models::MemberRetrieveResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute age
        #   Member's age in years, derived from date of birth
        #
        #   @return [Integer]
        required :age, Integer

        # @!attribute date_of_birth
        #   Date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute first_name
        #   Member's legal first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   Member's legal last name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute address
        #   Member's residential address
        #
        #   @return [VitableConnect::Models::MemberRetrieveResponse::Data::Address, nil]
        optional :address, -> { VitableConnect::Models::MemberRetrieveResponse::Data::Address }, nil?: true

        # @!attribute email
        #   Email address
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute gender
        #   - `Male` - Male
        #   - `Female` - Female
        #   - `Transgender` - Transgender
        #   - `Non-binary` - Non Binary
        #   - `Prefer not to respond` - Prefer Not To Respond
        #
        #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Gender, nil]
        optional :gender, enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::Gender }, nil?: true

        # @!attribute middle_name
        #   Member's legal middle name
        #
        #   @return [String, nil]
        optional :middle_name, String, nil?: true

        # @!attribute phone
        #   Phone number (10-digit US domestic string)
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute preferred_language
        #   - `en` - English
        #   - `es` - Spanish
        #   - `zh` - Chinese
        #   - `ru` - Russian
        #   - `sw` - Swahili
        #   - `th` - Thai
        #
        #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage, nil]
        optional :preferred_language,
                 enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage },
                 nil?: true

        # @!attribute sex_at_birth
        #   - `Male` - Male
        #   - `Female` - Female
        #   - `Other` - Other
        #   - `Unknown` - Unknown
        #
        #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth, nil]
        optional :sex_at_birth,
                 enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth },
                 nil?: true

        # @!attribute suffix
        #   - `Sr` - Sr
        #   - `Jr` - Jr
        #   - `I` - I
        #   - `II` - II
        #   - `III` - III
        #   - `IV` - IV
        #   - `V` - V
        #
        #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Suffix, nil]
        optional :suffix, enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::Suffix }, nil?: true

        # @!attribute tobacco_status
        #   Whether the member uses tobacco, if known
        #
        #   @return [Boolean, nil]
        optional :tobacco_status, VitableConnect::Internal::Type::Boolean, nil?: true

        response_only do
          # @!attribute id
          #   Unique member identifier with 'mbr\_' prefix
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Member's full legal name
          #
          #   @return [String]
          required :name, String

          # @!attribute status
          #   Member profile status (onboarded or pending onboarding)
          #
          #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Status]
          required :status, enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::Status }
        end

        # @!method initialize(id:, age:, date_of_birth:, first_name:, last_name:, name:, status:, address: nil, email: nil, gender: nil, middle_name: nil, phone: nil, preferred_language: nil, sex_at_birth: nil, suffix: nil, tobacco_status: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::MemberRetrieveResponse::Data} for more details.
        #
        #   A member's profile: identity, contact details, address, demographics, and
        #   onboarding status.
        #
        #   @param id [String] Unique member identifier with 'mbr\_' prefix
        #
        #   @param age [Integer] Member's age in years, derived from date of birth
        #
        #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        #   @param first_name [String] Member's legal first name
        #
        #   @param last_name [String] Member's legal last name
        #
        #   @param name [String] Member's full legal name
        #
        #   @param status [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Status] Member profile status (onboarded or pending onboarding)
        #
        #   @param address [VitableConnect::Models::MemberRetrieveResponse::Data::Address, nil] Member's residential address
        #
        #   @param email [String, nil] Email address
        #
        #   @param gender [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Gender, nil] - `Male` - Male
        #
        #   @param middle_name [String, nil] Member's legal middle name
        #
        #   @param phone [String, nil] Phone number (10-digit US domestic string)
        #
        #   @param preferred_language [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::PreferredLanguage, nil] - `en` - English
        #
        #   @param sex_at_birth [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::SexAtBirth, nil] - `Male` - Male
        #
        #   @param suffix [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Suffix, nil] - `Sr` - Sr
        #
        #   @param tobacco_status [Boolean, nil] Whether the member uses tobacco, if known

        # Member profile status (onboarded or pending onboarding)
        #
        # @see VitableConnect::Models::MemberRetrieveResponse::Data#status
        module Status
          extend VitableConnect::Internal::Type::Enum

          ONBOARDED = :onboarded
          PENDING_ONBOARDING = :pending_onboarding

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitableConnect::Models::MemberRetrieveResponse::Data#address
        class Address < VitableConnect::Internal::Type::BaseModel
          # @!attribute address_line_1
          #   Primary street address
          #
          #   @return [String]
          required :address_line_1, String

          # @!attribute city
          #   City name
          #
          #   @return [String]
          required :city, String

          # @!attribute state
          #   - `AL` - AL
          #   - `AK` - AK
          #   - `AZ` - AZ
          #   - `AR` - AR
          #   - `CA` - CA
          #   - `CO` - CO
          #   - `CT` - CT
          #   - `DC` - DC
          #   - `DE` - DE
          #   - `FL` - FL
          #   - `GA` - GA
          #   - `HI` - HI
          #   - `ID` - ID
          #   - `IL` - IL
          #   - `IN` - IN
          #   - `IA` - IA
          #   - `KS` - KS
          #   - `KY` - KY
          #   - `LA` - LA
          #   - `ME` - ME
          #   - `MD` - MD
          #   - `MA` - MA
          #   - `MI` - MI
          #   - `MN` - MN
          #   - `MS` - MS
          #   - `MO` - MO
          #   - `MT` - MT
          #   - `NE` - NE
          #   - `NV` - NV
          #   - `NH` - NH
          #   - `NJ` - NJ
          #   - `NM` - NM
          #   - `NY` - NY
          #   - `NC` - NC
          #   - `ND` - ND
          #   - `OH` - OH
          #   - `OK` - OK
          #   - `OR` - OR
          #   - `PA` - PA
          #   - `RI` - RI
          #   - `SC` - SC
          #   - `SD` - SD
          #   - `TN` - TN
          #   - `TX` - TX
          #   - `UT` - UT
          #   - `VT` - VT
          #   - `VA` - VA
          #   - `WA` - WA
          #   - `WI` - WI
          #   - `WV` - WV
          #   - `WY` - WY
          #   - `PR` - PR
          #   - `GU` - GU
          #   - `AS` - AS
          #   - `VI` - VI
          #   - `MP` - MP
          #   - `MH` - MH
          #   - `PW` - PW
          #   - `FM` - FM
          #   - `AE` - AE
          #   - `AA` - AA
          #   - `AP` - AP
          #
          #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Address::State]
          required :state, enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::Address::State }

          # @!attribute zipcode
          #   ZIP code (5 or 9 digit)
          #
          #   @return [String]
          required :zipcode, String

          # @!attribute address_line_2
          #   Secondary street address (apt, suite, etc.)
          #
          #   @return [String, nil]
          optional :address_line_2, String, nil?: true

          # @!method initialize(address_line_1:, city:, state:, zipcode:, address_line_2: nil)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::MemberRetrieveResponse::Data::Address} for more
          #   details.
          #
          #   Member's residential address
          #
          #   @param address_line_1 [String] Primary street address
          #
          #   @param city [String] City name
          #
          #   @param state [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Address::State] - `AL` - AL
          #
          #   @param zipcode [String] ZIP code (5 or 9 digit)
          #
          #   @param address_line_2 [String, nil] Secondary street address (apt, suite, etc.)

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
          #
          # @see VitableConnect::Models::MemberRetrieveResponse::Data::Address#state
          module State
            extend VitableConnect::Internal::Type::Enum

            AL = :AL
            AK = :AK
            AZ = :AZ
            AR = :AR
            CA = :CA
            CO = :CO
            CT = :CT
            DC = :DC
            DE = :DE
            FL = :FL
            GA = :GA
            HI = :HI
            ID = :ID
            IL = :IL
            IN = :IN
            IA = :IA
            KS = :KS
            KY = :KY
            LA = :LA
            ME = :ME
            MD = :MD
            MA = :MA
            MI = :MI
            MN = :MN
            MS = :MS
            MO = :MO
            MT = :MT
            NE = :NE
            NV = :NV
            NH = :NH
            NJ = :NJ
            NM = :NM
            NY = :NY
            NC = :NC
            ND = :ND
            OH = :OH
            OK = :OK
            OR = :OR
            PA = :PA
            RI = :RI
            SC = :SC
            SD = :SD
            TN = :TN
            TX = :TX
            UT = :UT
            VT = :VT
            VA = :VA
            WA = :WA
            WI = :WI
            WV = :WV
            WY = :WY
            PR = :PR
            GU = :GU
            AS = :AS
            VI = :VI
            MP = :MP
            MH = :MH
            PW = :PW
            FM = :FM
            AE = :AE
            AA = :AA
            AP = :AP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # - `Male` - Male
        # - `Female` - Female
        # - `Transgender` - Transgender
        # - `Non-binary` - Non Binary
        # - `Prefer not to respond` - Prefer Not To Respond
        #
        # @see VitableConnect::Models::MemberRetrieveResponse::Data#gender
        module Gender
          extend VitableConnect::Internal::Type::Enum

          MALE = :Male
          FEMALE = :Female
          TRANSGENDER = :Transgender
          NON_BINARY = :"Non-binary"
          PREFER_NOT_TO_RESPOND = :"Prefer not to respond"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `en` - English
        # - `es` - Spanish
        # - `zh` - Chinese
        # - `ru` - Russian
        # - `sw` - Swahili
        # - `th` - Thai
        #
        # @see VitableConnect::Models::MemberRetrieveResponse::Data#preferred_language
        module PreferredLanguage
          extend VitableConnect::Internal::Type::Enum

          EN = :en
          ES = :es
          ZH = :zh
          RU = :ru
          SW = :sw
          TH = :th

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        #
        # @see VitableConnect::Models::MemberRetrieveResponse::Data#sex_at_birth
        module SexAtBirth
          extend VitableConnect::Internal::Type::Enum

          MALE = :Male
          FEMALE = :Female
          OTHER = :Other
          UNKNOWN = :Unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Sr` - Sr
        # - `Jr` - Jr
        # - `I` - I
        # - `II` - II
        # - `III` - III
        # - `IV` - IV
        # - `V` - V
        #
        # @see VitableConnect::Models::MemberRetrieveResponse::Data#suffix
        module Suffix
          extend VitableConnect::Internal::Type::Enum

          SR = :Sr
          JR = :Jr
          I = :I
          II = :II
          III = :III
          IV = :IV
          V = :V

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
