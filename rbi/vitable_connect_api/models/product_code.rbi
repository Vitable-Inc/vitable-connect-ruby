# typed: strong

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

      TaggedSymbol =
        T.type_alias { T.all(Symbol, VitableConnectAPI::ProductCode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EBA = T.let(:EBA, VitableConnectAPI::ProductCode::TaggedSymbol)
      VPC = T.let(:VPC, VitableConnectAPI::ProductCode::TaggedSymbol)
      VPC_CORE = T.let(:VPC_CORE, VitableConnectAPI::ProductCode::TaggedSymbol)
      MEC = T.let(:MEC, VitableConnectAPI::ProductCode::TaggedSymbol)
      MEC2 = T.let(:MEC2, VitableConnectAPI::ProductCode::TaggedSymbol)
      MEC_PLUS = T.let(:MEC_PLUS, VitableConnectAPI::ProductCode::TaggedSymbol)
      MVP = T.let(:MVP, VitableConnectAPI::ProductCode::TaggedSymbol)
      MVP2 = T.let(:MVP2, VitableConnectAPI::ProductCode::TaggedSymbol)
      MVPSL = T.let(:MVPSL, VitableConnectAPI::ProductCode::TaggedSymbol)
      MVPSL2 = T.let(:MVPSL2, VitableConnectAPI::ProductCode::TaggedSymbol)
      VD = T.let(:VD, VitableConnectAPI::ProductCode::TaggedSymbol)
      VV = T.let(:VV, VitableConnectAPI::ProductCode::TaggedSymbol)
      ICHRA = T.let(:ICHRA, VitableConnectAPI::ProductCode::TaggedSymbol)
      ICHRA_PREMIUM_PLUS =
        T.let(:ICHRA_PREMIUM_PLUS, VitableConnectAPI::ProductCode::TaggedSymbol)
      ICHRA_REIMBURSEMENT_ONLY =
        T.let(
          :ICHRA_REIMBURSEMENT_ONLY,
          VitableConnectAPI::ProductCode::TaggedSymbol
        )

      sig do
        override.returns(T::Array[VitableConnectAPI::ProductCode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
