# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single saved member dependent resource.
    class SavedMemberDependentResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::SavedMemberDependent }, optional: false, nullable: false
    end
  end
end
