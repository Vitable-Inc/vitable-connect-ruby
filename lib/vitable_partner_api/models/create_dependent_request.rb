# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class CreateDependentRequest < VitablePartnerAPI::Internal::Type::BaseModel
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

      # @!attribute relationship
      #
      #   @return [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Relationship]
      required :relationship, enum: -> { VitablePartnerAPI::CreateDependentRequest::Relationship }

      # @!attribute gender
      #
      #   @return [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Gender, nil]
      optional :gender, enum: -> { VitablePartnerAPI::CreateDependentRequest::Gender }

      # @!attribute sex
      #
      #   @return [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Sex, nil]
      optional :sex, enum: -> { VitablePartnerAPI::CreateDependentRequest::Sex }

      # @!attribute suffix
      #
      #   @return [String, nil]
      optional :suffix, String

      # @!method initialize(date_of_birth:, first_name:, last_name:, relationship:, gender: nil, sex: nil, suffix: nil)
      #   @param date_of_birth [Date]
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param relationship [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Relationship]
      #   @param gender [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Gender]
      #   @param sex [Symbol, VitablePartnerAPI::Models::CreateDependentRequest::Sex]
      #   @param suffix [String]

      # @see VitablePartnerAPI::Models::CreateDependentRequest#relationship
      module Relationship
        extend VitablePartnerAPI::Internal::Type::Enum

        SPOUSE = :SPOUSE
        CHILD = :CHILD

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see VitablePartnerAPI::Models::CreateDependentRequest#gender
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

      # @see VitablePartnerAPI::Models::CreateDependentRequest#sex
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
