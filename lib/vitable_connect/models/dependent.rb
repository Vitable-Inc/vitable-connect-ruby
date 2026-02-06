# frozen_string_literal: true

module VitableConnect
  module Models
    class Dependent < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Unique dependent identifier with 'dpnd\_' prefix
      #
      #   @return [String]
      required :id, String

      # @!attribute active_in
      #   Whether the dependent is currently active
      #
      #   @return [Boolean]
      required :active_in, VitableConnect::Internal::Type::Boolean

      # @!attribute created_at
      #   Timestamp when the dependent was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute date_of_birth
      #   Dependent's date of birth (YYYY-MM-DD)
      #
      #   @return [Date]
      required :date_of_birth, Date

      # @!attribute first_name
      #   Dependent's legal first name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   Dependent's legal last name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute member_id
      #   ID of the primary member/employee (mbr\_\*)
      #
      #   @return [String]
      required :member_id, String

      # @!attribute relationship
      #   - `Spouse` - Spouse
      #   - `Child` - Child
      #
      #   @return [Symbol, VitableConnect::Models::Members::Relationship]
      required :relationship, enum: -> { VitableConnect::Members::Relationship }

      # @!attribute sex
      #   - `Male` - Male
      #   - `Female` - Female
      #   - `Other` - Other
      #   - `Unknown` - Unknown
      #
      #   @return [Symbol, VitableConnect::Models::Employers::Sex]
      required :sex, enum: -> { VitableConnect::Employers::Sex }

      # @!attribute updated_at
      #   Timestamp when the dependent was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute gender
      #   Gender identity, if provided
      #
      #   @return [String, nil]
      optional :gender, String, nil?: true

      # @!attribute ssn_last_four
      #   Last 4 digits of SSN (masked)
      #
      #   @return [String, nil]
      optional :ssn_last_four, String, nil?: true

      # @!attribute suffix
      #   Name suffix (e.g., Jr., Sr., III)
      #
      #   @return [String, nil]
      optional :suffix, String, nil?: true

      # @!method initialize(id:, active_in:, created_at:, date_of_birth:, first_name:, last_name:, member_id:, relationship:, sex:, updated_at:, gender: nil, ssn_last_four: nil, suffix: nil)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::Dependent} for more details.
      #
      #   Serializer for Dependent entity in public API responses.
      #
      #   Dependents are family members (spouse, children) who may be eligible for benefit
      #   coverage through an employee.
      #
      #   @param id [String] Unique dependent identifier with 'dpnd\_' prefix
      #
      #   @param active_in [Boolean] Whether the dependent is currently active
      #
      #   @param created_at [Time] Timestamp when the dependent was created
      #
      #   @param date_of_birth [Date] Dependent's date of birth (YYYY-MM-DD)
      #
      #   @param first_name [String] Dependent's legal first name
      #
      #   @param last_name [String] Dependent's legal last name
      #
      #   @param member_id [String] ID of the primary member/employee (mbr\_\*)
      #
      #   @param relationship [Symbol, VitableConnect::Models::Members::Relationship] - `Spouse` - Spouse
      #
      #   @param sex [Symbol, VitableConnect::Models::Employers::Sex] - `Male` - Male
      #
      #   @param updated_at [Time] Timestamp when the dependent was last updated
      #
      #   @param gender [String, nil] Gender identity, if provided
      #
      #   @param ssn_last_four [String, nil] Last 4 digits of SSN (masked)
      #
      #   @param suffix [String, nil] Name suffix (e.g., Jr., Sr., III)
    end
  end
end
