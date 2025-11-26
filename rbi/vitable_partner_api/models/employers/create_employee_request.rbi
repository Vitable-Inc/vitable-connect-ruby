# typed: strong

module VitablePartnerAPI
  module Models
    module Employers
      class CreateEmployeeRequest < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Employers::CreateEmployeeRequest,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :date_of_birth

        sig { returns(String) }
        attr_accessor :first_name

        sig { returns(String) }
        attr_accessor :last_name

        sig { returns(Date) }
        attr_accessor :start_date

        sig do
          returns(
            T.nilable(
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::OrSymbol
            )
          )
        end
        attr_reader :gender

        sig do
          params(
            gender:
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::OrSymbol
          ).void
        end
        attr_writer :gender

        sig do
          returns(
            T.nilable(
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::OrSymbol
            )
          )
        end
        attr_reader :sex

        sig do
          params(
            sex:
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::OrSymbol
          ).void
        end
        attr_writer :sex

        # Social Security Number (only allowed on create)
        sig { returns(T.nilable(String)) }
        attr_reader :ssn

        sig { params(ssn: String).void }
        attr_writer :ssn

        sig { returns(T.nilable(String)) }
        attr_reader :suffix

        sig { params(suffix: String).void }
        attr_writer :suffix

        sig do
          params(
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            start_date: Date,
            gender:
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::OrSymbol,
            sex:
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::OrSymbol,
            ssn: String,
            suffix: String
          ).returns(T.attached_class)
        end
        def self.new(
          date_of_birth:,
          first_name:,
          last_name:,
          start_date:,
          gender: nil,
          sex: nil,
          # Social Security Number (only allowed on create)
          ssn: nil,
          suffix: nil
        )
        end

        sig do
          override.returns(
            {
              date_of_birth: Date,
              first_name: String,
              last_name: String,
              start_date: Date,
              gender:
                VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::OrSymbol,
              sex:
                VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::OrSymbol,
              ssn: String,
              suffix: String
            }
          )
        end
        def to_hash
        end

        module Gender
          extend VitablePartnerAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :MALE,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::TaggedSymbol
            )
          FEMALE =
            T.let(
              :FEMALE,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::TaggedSymbol
            )
          TRANSGENDER =
            T.let(
              :TRANSGENDER,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::TaggedSymbol
            )
          NON_BINARY =
            T.let(
              :NON_BINARY,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::TaggedSymbol
            )
          PREFER_NOT_TO_RESPOND =
            T.let(
              :PREFER_NOT_TO_RESPOND,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Sex
          extend VitablePartnerAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :MALE,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::TaggedSymbol
            )
          FEMALE =
            T.let(
              :FEMALE,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex::TaggedSymbol
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
