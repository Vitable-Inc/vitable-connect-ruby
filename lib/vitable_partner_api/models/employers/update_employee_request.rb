# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employers
      class UpdateEmployeeRequest < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute date_of_birth
        #
        #   @return [Date, nil]
        optional :date_of_birth, Date

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute gender
        #
        #   @return [Symbol, VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest::Gender, nil]
        optional :gender, enum: -> { VitablePartnerAPI::Employers::UpdateEmployeeRequest::Gender }

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute sex
        #
        #   @return [Symbol, VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest::Sex, nil]
        optional :sex, enum: -> { VitablePartnerAPI::Employers::UpdateEmployeeRequest::Sex }

        # @!attribute start_date
        #
        #   @return [Date, nil]
        optional :start_date, Date

        # @!attribute suffix
        #
        #   @return [String, nil]
        optional :suffix, String

        # @!method initialize(date_of_birth: nil, first_name: nil, gender: nil, last_name: nil, sex: nil, start_date: nil, suffix: nil)
        #   @param date_of_birth [Date]
        #   @param first_name [String]
        #   @param gender [Symbol, VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest::Gender]
        #   @param last_name [String]
        #   @param sex [Symbol, VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest::Sex]
        #   @param start_date [Date]
        #   @param suffix [String]

        # @see VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest#gender
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

        # @see VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest#sex
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
