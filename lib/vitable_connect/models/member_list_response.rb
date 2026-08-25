# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list
    class MemberListResponse < VitableConnect::Internal::Type::BaseModel
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
      #   @return [VitableConnect::Models::MemberListResponse::Address, nil]
      optional :address, -> { VitableConnect::Models::MemberListResponse::Address }, nil?: true

      # @!attribute email
      #   Email address
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute phone
      #   Phone number (10-digit US domestic string)
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      response_only do
        # @!attribute id
        #   Unique member identifier with 'mbr\_' prefix
        #
        #   @return [String]
        required :id, String
      end

      # @!method initialize(id:, first_name:, last_name:, address: nil, email: nil, phone: nil)
      #   A member in the organization's directory: identity, contact details, address,
      #   and join date.
      #
      #   @param id [String] Unique member identifier with 'mbr\_' prefix
      #
      #   @param first_name [String] Member's legal first name
      #
      #   @param last_name [String] Member's legal last name
      #
      #   @param address [VitableConnect::Models::MemberListResponse::Address, nil] Member's residential address
      #
      #   @param email [String, nil] Email address
      #
      #   @param phone [String, nil] Phone number (10-digit US domestic string)

      # @see VitableConnect::Models::MemberListResponse#address
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
        #   @return [Symbol, VitableConnect::Models::MemberListResponse::Address::State]
        required :state, enum: -> { VitableConnect::Models::MemberListResponse::Address::State }

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
        #   {VitableConnect::Models::MemberListResponse::Address} for more details.
        #
        #   Member's residential address
        #
        #   @param address_line_1 [String] Primary street address
        #
        #   @param city [String] City name
        #
        #   @param state [Symbol, VitableConnect::Models::MemberListResponse::Address::State] - `AL` - AL
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
        # @see VitableConnect::Models::MemberListResponse::Address#state
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
    end
  end
end
