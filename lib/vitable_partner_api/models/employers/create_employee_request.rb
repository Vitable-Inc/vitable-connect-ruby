# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employers
      class CreateEmployeeRequest < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute date_of_birth
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute first_name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute start_date
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute gender
        #
        #   @return [Symbol, VitablePartnerAPI::Models::Employers::CreateEmployeeRequest::Gender, nil]
        optional :gender, enum: -> { VitablePartnerAPI::Employers::CreateEmployeeRequest::Gender }

        # @!attribute sex
        #
        #   @return [Symbol, VitablePartnerAPI::Models::Employers::CreateEmployeeRequest::Sex, nil]
        optional :sex, enum: -> { VitablePartnerAPI::Employers::CreateEmployeeRequest::Sex }

        # @!attribute ssn
        #   Social Security Number (only allowed on create)
        #
        #   @return [String, nil]
        optional :ssn, String

        # @!attribute suffix
        #
        #   @return [String, nil]
        optional :suffix, String

        # @!method initialize(date_of_birth:, first_name:, last_name:, start_date:, gender: nil, sex: nil, ssn: nil, suffix: nil)
        #   @param date_of_birth [Date]
        #
        #   @param first_name [String]
        #
        #   @param last_name [String]
        #
        #   @param start_date [Date]
        #
        #   @param gender [Symbol, VitablePartnerAPI::Models::Employers::CreateEmployeeRequest::Gender]
        #
        #   @param sex [Symbol, VitablePartnerAPI::Models::Employers::CreateEmployeeRequest::Sex]
        #
        #   @param ssn [String] Social Security Number (only allowed on create)
        #
        #   @param suffix [String]

        # @see VitablePartnerAPI::Models::Employers::CreateEmployeeRequest#gender
        module Gender
          extend VitablePartnerAPI::Internal::Type::Enum

          MALE = :MALE
          FEMALE = :FEMALE
          TRANSGENDER = :TRANSGENDER
          NON_BINARY = :NON_BINARY
          PREFER_NOT_TO_RESPOND = :PREFER_NOT_TO_RESPOND

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitablePartnerAPI::Models::Employers::CreateEmployeeRequest#sex
        module Sex
          extend VitablePartnerAPI::Internal::Type::Enum

          MALE = :MALE
          FEMALE = :FEMALE
          OTHER = :OTHER
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
