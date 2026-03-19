# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#submit_census_sync
    class EmployerSubmitCensusSyncParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute employees
      #
      #   @return [Array<VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee>]
      required :employees,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::EmployerSubmitCensusSyncParams::Employee] }

      # @!method initialize(employer_id:, employees:, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param employees [Array<VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee>]
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      class Employee < VitableConnect::Internal::Type::BaseModel
        # @!attribute date_of_birth
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute phone
        #
        #   @return [String]
        required :phone, String

        # @!attribute address
        #
        #   @return [VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::Address, nil]
        optional :address,
                 -> {
                   VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address
                 },
                 nil?: true

        # @!attribute compensation_type
        #   - `Salary` - Salary
        #   - `Hourly` - Hourly
        #
        #   @return [Symbol, VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::CompensationType, nil]
        optional :compensation_type,
                 enum: -> { VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType },
                 nil?: true

        # @!attribute employee_class
        #   - `Full Time` - Full Time
        #   - `Part Time` - Part Time
        #   - `Temporary` - Temporary
        #   - `Intern` - Intern
        #   - `Seasonal` - Seasonal
        #   - `Individual Contractor` - Individual Contractor
        #
        #   @return [Symbol, VitableConnect::Models::EmployeeClass, nil]
        optional :employee_class, enum: -> { VitableConnect::EmployeeClass }, nil?: true

        # @!attribute reference_id
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!attribute start_date
        #
        #   @return [Date, nil]
        optional :start_date, Date, nil?: true

        # @!method initialize(date_of_birth:, email:, first_name:, last_name:, phone:, address: nil, compensation_type: nil, employee_class: nil, reference_id: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee} for more
        #   details.
        #
        #   @param date_of_birth [Date]
        #
        #   @param email [String]
        #
        #   @param first_name [String]
        #
        #   @param last_name [String]
        #
        #   @param phone [String]
        #
        #   @param address [VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::Address, nil]
        #
        #   @param compensation_type [Symbol, VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::CompensationType, nil] - `Salary` - Salary
        #
        #   @param employee_class [Symbol, VitableConnect::Models::EmployeeClass, nil] - `Full Time` - Full Time
        #
        #   @param reference_id [String, nil]
        #
        #   @param start_date [Date, nil]

        # @see VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee#address
        class Address < VitableConnect::Internal::Type::BaseModel
          # @!attribute address_line_1
          #
          #   @return [String]
          required :address_line_1, String

          # @!attribute city
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
          #   @return [Symbol, VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::Address::State]
          required :state, enum: -> { VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State }

          # @!attribute zipcode
          #
          #   @return [String]
          required :zipcode, String

          # @!attribute address_line_2
          #
          #   @return [String, nil]
          optional :address_line_2, String, nil?: true

          # @!method initialize(address_line_1:, city:, state:, zipcode:, address_line_2: nil)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::Address} for
          #   more details.
          #
          #   @param address_line_1 [String]
          #
          #   @param city [String]
          #
          #   @param state [Symbol, VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::Address::State] - `AL` - AL
          #
          #   @param zipcode [String]
          #
          #   @param address_line_2 [String, nil]

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
          # @see VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee::Address#state
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

        # - `Salary` - Salary
        # - `Hourly` - Hourly
        #
        # @see VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee#compensation_type
        module CompensationType
          extend VitableConnect::Internal::Type::Enum

          SALARY = :Salary
          HOURLY = :Hourly

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
