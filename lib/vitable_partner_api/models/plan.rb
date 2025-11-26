# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class Plan < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute plan_name
      #   Plan name (e.g., MEC, MEC Plus)
      #
      #   @return [String]
      required :plan_name, String

      # @!method initialize(id:, plan_name:)
      #   @param id [String]
      #
      #   @param plan_name [String] Plan name (e.g., MEC, MEC Plus)
    end
  end
end
