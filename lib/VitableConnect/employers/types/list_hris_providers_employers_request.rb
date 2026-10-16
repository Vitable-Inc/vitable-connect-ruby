# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class ListHrisProvidersEmployersRequest < Internal::Types::Model
        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
