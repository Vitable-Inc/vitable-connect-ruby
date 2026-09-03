# frozen_string_literal: true

module VitableConnect
  module Types
    module ProductCode
      extend VitableConnect::Internal::Types::Enum

      EBA = "EBA"
      VPC = "VPC"
      VPC_CORE = "VPC_CORE"
      MEC = "MEC"
      MEC2 = "MEC2"
      MEC_PLUS = "MEC_PLUS"
      MVP = "MVP"
      MVP2 = "MVP2"
      MVPSL = "MVPSL"
      MVPSL2 = "MVPSL2"
      VD = "VD"
      VV = "VV"
      ICHRA = "ICHRA"
      ICHRA_PREMIUM_PLUS = "ICHRA_PREMIUM_PLUS"
      ICHRA_REIMBURSEMENT_ONLY = "ICHRA_REIMBURSEMENT_ONLY"
    end
  end
end
