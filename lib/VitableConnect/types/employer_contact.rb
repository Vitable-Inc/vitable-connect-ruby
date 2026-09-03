# frozen_string_literal: true

module VitableConnect
  module Types
    # Primary company-admin contact (email + phone; company admins have no person name).
    class EmployerContact < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: true

      field :phone, -> { String }, optional: false, nullable: true
    end
  end
end
