# typed: strong

module VitableConnect
  module Models
    class EmployerSubmitCensusSyncParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerSubmitCensusSyncParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      sig do
        returns(
          T::Array[VitableConnect::EmployerSubmitCensusSyncParams::Employee]
        )
      end
      attr_accessor :employees

      sig do
        params(
          employer_id: String,
          employees:
            T::Array[
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::OrHash
            ],
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        employees:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            employees:
              T::Array[
                VitableConnect::EmployerSubmitCensusSyncParams::Employee
              ],
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Employee < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::EmployerSubmitCensusSyncParams::Employee,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :date_of_birth

        sig { returns(String) }
        attr_accessor :email

        sig { returns(String) }
        attr_accessor :first_name

        sig { returns(String) }
        attr_accessor :last_name

        sig { returns(String) }
        attr_accessor :phone

        sig do
          returns(
            T.nilable(
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              T.nilable(
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::OrHash
              )
          ).void
        end
        attr_writer :address

        # - `Salary` - Salary
        # - `Hourly` - Hourly
        sig do
          returns(
            T.nilable(
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType::OrSymbol
            )
          )
        end
        attr_accessor :compensation_type

        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        sig { returns(T.nilable(VitableConnect::EmployeeClass::OrSymbol)) }
        attr_accessor :employee_class

        sig { returns(T.nilable(String)) }
        attr_accessor :reference_id

        sig { returns(T.nilable(Date)) }
        attr_accessor :start_date

        sig do
          params(
            date_of_birth: Date,
            email: String,
            first_name: String,
            last_name: String,
            phone: String,
            address:
              T.nilable(
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::OrHash
              ),
            compensation_type:
              T.nilable(
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType::OrSymbol
              ),
            employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
            reference_id: T.nilable(String),
            start_date: T.nilable(Date)
          ).returns(T.attached_class)
        end
        def self.new(
          date_of_birth:,
          email:,
          first_name:,
          last_name:,
          phone:,
          address: nil,
          # - `Salary` - Salary
          # - `Hourly` - Hourly
          compensation_type: nil,
          # - `Full Time` - Full Time
          # - `Part Time` - Part Time
          # - `Temporary` - Temporary
          # - `Intern` - Intern
          # - `Seasonal` - Seasonal
          # - `Individual Contractor` - Individual Contractor
          employee_class: nil,
          reference_id: nil,
          start_date: nil
        )
        end

        sig do
          override.returns(
            {
              date_of_birth: Date,
              email: String,
              first_name: String,
              last_name: String,
              phone: String,
              address:
                T.nilable(
                  VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address
                ),
              compensation_type:
                T.nilable(
                  VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType::OrSymbol
                ),
              employee_class:
                T.nilable(VitableConnect::EmployeeClass::OrSymbol),
              reference_id: T.nilable(String),
              start_date: T.nilable(Date)
            }
          )
        end
        def to_hash
        end

        class Address < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address,
                VitableConnect::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :address_line_1

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
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::OrSymbol
            )
          end
          attr_accessor :state

          sig { returns(String) }
          attr_accessor :zipcode

          sig { returns(T.nilable(String)) }
          attr_accessor :address_line_2

          sig do
            params(
              address_line_1: String,
              city: String,
              state:
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::OrSymbol,
              zipcode: String,
              address_line_2: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            address_line_1:,
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
            zipcode:,
            address_line_2: nil
          )
          end

          sig do
            override.returns(
              {
                address_line_1: String,
                city: String,
                state:
                  VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::OrSymbol,
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
                  VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AL =
              T.let(
                :AL,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AK =
              T.let(
                :AK,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AZ =
              T.let(
                :AZ,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AR =
              T.let(
                :AR,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            CA =
              T.let(
                :CA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            CO =
              T.let(
                :CO,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            CT =
              T.let(
                :CT,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            DC =
              T.let(
                :DC,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            DE =
              T.let(
                :DE,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            FL =
              T.let(
                :FL,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            GA =
              T.let(
                :GA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            HI =
              T.let(
                :HI,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            ID =
              T.let(
                :ID,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            IL =
              T.let(
                :IL,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            IN =
              T.let(
                :IN,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            IA =
              T.let(
                :IA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            KS =
              T.let(
                :KS,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            KY =
              T.let(
                :KY,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            LA =
              T.let(
                :LA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            ME =
              T.let(
                :ME,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MD =
              T.let(
                :MD,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MA =
              T.let(
                :MA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MI =
              T.let(
                :MI,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MN =
              T.let(
                :MN,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MS =
              T.let(
                :MS,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MO =
              T.let(
                :MO,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MT =
              T.let(
                :MT,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NE =
              T.let(
                :NE,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NV =
              T.let(
                :NV,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NH =
              T.let(
                :NH,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NJ =
              T.let(
                :NJ,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NM =
              T.let(
                :NM,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NY =
              T.let(
                :NY,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            NC =
              T.let(
                :NC,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            ND =
              T.let(
                :ND,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            OH =
              T.let(
                :OH,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            OK =
              T.let(
                :OK,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            OR =
              T.let(
                :OR,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            PA =
              T.let(
                :PA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            RI =
              T.let(
                :RI,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            SC =
              T.let(
                :SC,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            SD =
              T.let(
                :SD,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            TN =
              T.let(
                :TN,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            TX =
              T.let(
                :TX,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            UT =
              T.let(
                :UT,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            VT =
              T.let(
                :VT,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            VA =
              T.let(
                :VA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            WA =
              T.let(
                :WA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            WI =
              T.let(
                :WI,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            WV =
              T.let(
                :WV,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            WY =
              T.let(
                :WY,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            PR =
              T.let(
                :PR,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            GU =
              T.let(
                :GU,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AS =
              T.let(
                :AS,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            VI =
              T.let(
                :VI,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MP =
              T.let(
                :MP,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            MH =
              T.let(
                :MH,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            PW =
              T.let(
                :PW,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            FM =
              T.let(
                :FM,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AE =
              T.let(
                :AE,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AA =
              T.let(
                :AA,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )
            AP =
              T.let(
                :AP,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitableConnect::EmployerSubmitCensusSyncParams::Employee::Address::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # - `Salary` - Salary
        # - `Hourly` - Hourly
        module CompensationType
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SALARY =
            T.let(
              :Salary,
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType::TaggedSymbol
            )
          HOURLY =
            T.let(
              :Hourly,
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::EmployerSubmitCensusSyncParams::Employee::CompensationType::TaggedSymbol
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
