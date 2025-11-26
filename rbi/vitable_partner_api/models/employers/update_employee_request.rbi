# typed: strong

module VitablePartnerAPI
  module Models
    module Employers
      class UpdateEmployeeRequest < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Employers::UpdateEmployeeRequest,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Date)) }
        attr_reader :date_of_birth

        sig { params(date_of_birth: Date).void }
        attr_writer :date_of_birth

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        sig do
          returns(
            T.nilable(
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::OrSymbol
            )
          )
        end
        attr_reader :gender

        sig do
          params(
            gender:
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::OrSymbol
          ).void
        end
        attr_writer :gender

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        sig do
          returns(
            T.nilable(
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::OrSymbol
            )
          )
        end
        attr_reader :sex

        sig do
          params(
            sex:
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::OrSymbol
          ).void
        end
        attr_writer :sex

        sig { returns(T.nilable(Date)) }
        attr_reader :start_date

        sig { params(start_date: Date).void }
        attr_writer :start_date

        sig { returns(T.nilable(String)) }
        attr_reader :suffix

        sig { params(suffix: String).void }
        attr_writer :suffix

        sig do
          params(
            date_of_birth: Date,
            first_name: String,
            gender:
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::OrSymbol,
            last_name: String,
            sex:
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::OrSymbol,
            start_date: Date,
            suffix: String
          ).returns(T.attached_class)
        end
        def self.new(
          date_of_birth: nil,
          first_name: nil,
          gender: nil,
          last_name: nil,
          sex: nil,
          start_date: nil,
          suffix: nil
        )
        end

        sig do
          override.returns(
            {
              date_of_birth: Date,
              first_name: String,
              gender:
                VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::OrSymbol,
              last_name: String,
              sex:
                VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::OrSymbol,
              start_date: Date,
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
                VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :MALE,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::TaggedSymbol
            )
          FEMALE =
            T.let(
              :FEMALE,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::TaggedSymbol
            )
          TRANSGENDER =
            T.let(
              :TRANSGENDER,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::TaggedSymbol
            )
          NON_BINARY =
            T.let(
              :NON_BINARY,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::TaggedSymbol
            )
          PREFER_NOT_TO_RESPOND =
            T.let(
              :PREFER_NOT_TO_RESPOND,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender::TaggedSymbol
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
                VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :MALE,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::TaggedSymbol
            )
          FEMALE =
            T.let(
              :FEMALE,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::TaggedSymbol
            )
          OTHER =
            T.let(
              :OTHER,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex::TaggedSymbol
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
