# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class ListEmployeesEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :employment_status, -> { VitableConnect::Types::EmployeeStatus }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
