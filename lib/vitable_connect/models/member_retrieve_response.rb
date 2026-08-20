# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#retrieve
    class MemberRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   A member's profile: identity, contact details, address, demographics, and
      #   onboarding status.
      #
      #   @return [VitableConnect::Models::MemberRetrieveResponse::Data]
      required :data, -> { VitableConnect::Models::MemberRetrieveResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::MemberRetrieveResponse} for more details.
      #
      #   Response containing a single member resource.
      #
      #   @param data [VitableConnect::Models::MemberRetrieveResponse::Data] A member's profile: identity, contact details, address, demographics, and onboar

      # @see VitableConnect::Models::MemberRetrieveResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute age
        #   Member's age in years, derived from date of birth
        #
        #   @return [Integer]
        required :age, Integer

        # @!attribute date_of_birth
        #   Date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

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
        #   @return [VitableConnect::Models::MemberRetrieveResponse::Data::Address, nil]
        optional :address, -> { VitableConnect::Models::MemberRetrieveResponse::Data::Address }, nil?: true

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

        # @!attribute preferred_language
        #   Member's preferred language code (e.g., en, es)
        #
        #   @return [String, nil]
        optional :preferred_language, String, nil?: true

        # @!attribute sex_at_birth
        #   Sex assigned at birth, if provided
        #
        #   @return [String, nil]
        optional :sex_at_birth, String, nil?: true

        # @!attribute tobacco_status
        #   Whether the member uses tobacco, if known
        #
        #   @return [Boolean, nil]
        optional :tobacco_status, VitableConnect::Internal::Type::Boolean, nil?: true

        response_only do
          # @!attribute id
          #   Unique member identifier with 'mbr\_' prefix
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Member's full name
          #
          #   @return [String]
          required :name, String

          # @!attribute status
          #   Member profile status (onboarded or pending onboarding)
          #
          #   @return [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Status]
          required :status, enum: -> { VitableConnect::Models::MemberRetrieveResponse::Data::Status }
        end

        # @!method initialize(id:, age:, date_of_birth:, first_name:, last_name:, name:, status:, address: nil, email: nil, phone: nil, preferred_language: nil, sex_at_birth: nil, tobacco_status: nil)
        #   A member's profile: identity, contact details, address, demographics, and
        #   onboarding status.
        #
        #   @param id [String] Unique member identifier with 'mbr\_' prefix
        #
        #   @param age [Integer] Member's age in years, derived from date of birth
        #
        #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        #   @param first_name [String] Member's legal first name
        #
        #   @param last_name [String] Member's legal last name
        #
        #   @param name [String] Member's full name
        #
        #   @param status [Symbol, VitableConnect::Models::MemberRetrieveResponse::Data::Status] Member profile status (onboarded or pending onboarding)
        #
        #   @param address [VitableConnect::Models::MemberRetrieveResponse::Data::Address, nil] Member's residential address
        #
        #   @param email [String, nil] Email address
        #
        #   @param phone [String, nil] Phone number (10-digit US domestic string)
        #
        #   @param preferred_language [String, nil] Member's preferred language code (e.g., en, es)
        #
        #   @param sex_at_birth [String, nil] Sex assigned at birth, if provided
        #
        #   @param tobacco_status [Boolean, nil] Whether the member uses tobacco, if known

        # Member profile status (onboarded or pending onboarding)
        #
        # @see VitableConnect::Models::MemberRetrieveResponse::Data#status
        module Status
          extend VitableConnect::Internal::Type::Enum

          ONBOARDED = :onboarded
          PENDING_ONBOARDING = :pending_onboarding

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitableConnect::Models::MemberRetrieveResponse::Data#address
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
          #   Two-letter state code (e.g., CA, NY)
          #
          #   @return [String]
          required :state, String

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
          #   Member's residential address
          #
          #   @param address_line_1 [String] Primary street address
          #
          #   @param city [String] City name
          #
          #   @param state [String] Two-letter state code (e.g., CA, NY)
          #
          #   @param zipcode [String] ZIP code (5 or 9 digit)
          #
          #   @param address_line_2 [String, nil] Secondary street address (apt, suite, etc.)
        end
      end
    end
  end
end
