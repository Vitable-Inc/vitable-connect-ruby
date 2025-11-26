# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class UpdateDependentRequest < VitablePartnerAPI::Internal::Type::BaseModel
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
      #   @return [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Gender, nil]
      optional :gender, enum: -> { VitablePartnerAPI::UpdateDependentRequest::Gender }

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute relationship
      #
      #   @return [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Relationship, nil]
      optional :relationship, enum: -> { VitablePartnerAPI::UpdateDependentRequest::Relationship }

      # @!attribute sex
      #
      #   @return [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Sex, nil]
      optional :sex, enum: -> { VitablePartnerAPI::UpdateDependentRequest::Sex }

      # @!attribute suffix
      #
      #   @return [String, nil]
      optional :suffix, String

      # @!method initialize(date_of_birth: nil, first_name: nil, gender: nil, last_name: nil, relationship: nil, sex: nil, suffix: nil)
      #   @param date_of_birth [Date]
      #   @param first_name [String]
      #   @param gender [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Gender]
      #   @param last_name [String]
      #   @param relationship [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Relationship]
      #   @param sex [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Sex]
      #   @param suffix [String]

      # @see VitablePartnerAPI::Models::UpdateDependentRequest#gender
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

      # @see VitablePartnerAPI::Models::UpdateDependentRequest#relationship
      module Relationship
        extend VitablePartnerAPI::Internal::Type::Enum

        SPOUSE = :SPOUSE
        CHILD = :CHILD

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see VitablePartnerAPI::Models::UpdateDependentRequest#sex
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
