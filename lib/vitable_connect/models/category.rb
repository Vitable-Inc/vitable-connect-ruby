# frozen_string_literal: true

module VitableConnect
  module Models
    # - `Medical` - Medical
    # - `Dental` - Dental
    # - `Vision` - Vision
    # - `Hospital` - Hospital
    module Category
      extend VitableConnect::Internal::Type::Enum

      MEDICAL = :Medical
      DENTAL = :Dental
      VISION = :Vision
      HOSPITAL = :Hospital

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
