# frozen_string_literal: true

module VitableConnect
  module Types
    class ErrorResponse < Internal::Types::Model
      field :timestamp, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :error, -> { String }, optional: false, nullable: false

      field :app_error_code, -> { String }, optional: true, nullable: false

      field :trace_id, -> { String }, optional: false, nullable: false
    end
  end
end
