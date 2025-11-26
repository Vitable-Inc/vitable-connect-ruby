# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class Member < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

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

      # @!attribute gender
      #
      #   @return [Symbol, VitablePartnerAPI::Models::Member::Gender, nil]
      optional :gender, enum: -> { VitablePartnerAPI::Member::Gender }, nil?: true

      # @!attribute sex
      #
      #   @return [Symbol, VitablePartnerAPI::Models::Member::Sex, nil]
      optional :sex, enum: -> { VitablePartnerAPI::Member::Sex }, nil?: true

      # @!attribute suffix
      #
      #   @return [String, nil]
      optional :suffix, String, nil?: true

      # @!method initialize(id:, date_of_birth:, first_name:, last_name:, gender: nil, sex: nil, suffix: nil)
      #   @param id [String]
      #   @param date_of_birth [Date]
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param gender [Symbol, VitablePartnerAPI::Models::Member::Gender, nil]
      #   @param sex [Symbol, VitablePartnerAPI::Models::Member::Sex, nil]
      #   @param suffix [String, nil]

      # @see VitablePartnerAPI::Models::Member#gender
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

      # @see VitablePartnerAPI::Models::Member#sex
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
