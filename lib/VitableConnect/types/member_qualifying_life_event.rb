# frozen_string_literal: true

module VitableConnect
  module Types
    class MemberQualifyingLifeEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :event_type, -> { VitableConnect::Types::QualifyingLifeEventType }, optional: false, nullable: false

      field :event_type_label, -> { String }, optional: false, nullable: false

      field :other_event, -> { String }, optional: false, nullable: true

      field :status, -> { VitableConnect::Types::QualifyingLifeEventStatus }, optional: false, nullable: false

      field :submitted_at, -> { String }, optional: false, nullable: false
    end
  end
end
