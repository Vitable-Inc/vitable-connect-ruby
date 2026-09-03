# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing member qualifying life event resources.
    class MemberQualifyingLifeEventListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::MemberQualifyingLifeEvent] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
