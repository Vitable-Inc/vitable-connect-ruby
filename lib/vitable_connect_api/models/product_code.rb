# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # - `EBA` - Eba Mec
    # - `VPC` - Vpc Enhanced
    # - `VPC_CORE` - Vpc Core
    # - `MEC` - Vpc Mec
    # - `MEC2` - Mec2
    # - `MEC_PLUS` - Mec Plus
    # - `MVP` - Mvp
    # - `MVP2` - Mvp2
    # - `MVPSL` - Mvpsl
    # - `MVPSL2` - Mvpsl2
    # - `VD` - Dental
    # - `VV` - Vision
    # - `ICHRA` - Ichra
    # - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
    # - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
    module ProductCode
      extend VitableConnectAPI::Internal::Type::Enum

      EBA = :EBA
      VPC = :VPC
      VPC_CORE = :VPC_CORE
      MEC = :MEC
      MEC2 = :MEC2
      MEC_PLUS = :MEC_PLUS
      MVP = :MVP
      MVP2 = :MVP2
      MVPSL = :MVPSL
      MVPSL2 = :MVPSL2
      VD = :VD
      VV = :VV
      ICHRA = :ICHRA
      ICHRA_PREMIUM_PLUS = :ICHRA_PREMIUM_PLUS
      ICHRA_REIMBURSEMENT_ONLY = :ICHRA_REIMBURSEMENT_ONLY

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
