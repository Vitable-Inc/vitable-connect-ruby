# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # - `Medical` - Medical
    # - `Dental` - Dental
    # - `Vision` - Vision
    # - `Hospital` - Hospital
    module Category
      extend VitableConnectAPI::Internal::Type::Enum

      MEDICAL = :Medical
      DENTAL = :Dental
      VISION = :Vision
      HOSPITAL = :Hospital

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
