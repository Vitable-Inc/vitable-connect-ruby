# frozen_string_literal: true

module VitableConnect
  module Types
    module CreateOrganizationRequestType
      extend VitableConnect::Internal::Types::Enum

      BROKERAGE = "BROKERAGE"
      TPA = "TPA"
      GENERAL_AGENT = "GENERAL_AGENT"
      CHANNEL_PARTNER = "CHANNEL_PARTNER"
      CONSULTING_FIRM = "CONSULTING_FIRM"
      API_PLATFORM = "API_PLATFORM"
    end
  end
end
