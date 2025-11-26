# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employees#retrieve
    class Employee < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute active
      #
      #   @return [Boolean]
      required :active, VitablePartnerAPI::Internal::Type::Boolean

      # @!attribute employer_id
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute member
      #
      #   @return [VitablePartnerAPI::Models::Member]
      required :member, -> { VitablePartnerAPI::Member }

      # @!attribute start_date
      #
      #   @return [Date]
      required :start_date, Date

      # @!attribute dependents
      #
      #   @return [Array<VitablePartnerAPI::Models::Dependent>, nil]
      optional :dependents, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Dependent] }

      # @!attribute terminated_at
      #
      #   @return [Time, nil]
      optional :terminated_at, Time, nil?: true

      # @!method initialize(id:, active:, employer_id:, member:, start_date:, dependents: nil, terminated_at: nil)
      #   @param id [String]
      #   @param active [Boolean]
      #   @param employer_id [String]
      #   @param member [VitablePartnerAPI::Models::Member]
      #   @param start_date [Date]
      #   @param dependents [Array<VitablePartnerAPI::Models::Dependent>]
      #   @param terminated_at [Time, nil]
    end
  end
end
