# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Groups#create
    class GroupResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::Group]
      required :data, -> { VitableConnect::Group }

      # @!method initialize(data:)
      #   Response containing a single group resource.
      #
      #   @param data [VitableConnect::Models::Group]
    end
  end
end
