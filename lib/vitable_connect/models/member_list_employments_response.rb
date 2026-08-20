# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_employments
    class MemberListEmploymentsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::Employee>]
      required :data, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee] }

      # @!method initialize(data:)
      #   Unpaginated `{"data": [...]}` list of member employments.
      #
      #   @param data [Array<VitableConnect::Models::Employee>]
    end
  end
end
