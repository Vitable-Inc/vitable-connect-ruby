# typed: strong

module VitableConnect
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
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnect::ProductCode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EBA = T.let(:EBA, VitableConnect::ProductCode::TaggedSymbol)
      VPC = T.let(:VPC, VitableConnect::ProductCode::TaggedSymbol)
      VPC_CORE = T.let(:VPC_CORE, VitableConnect::ProductCode::TaggedSymbol)
      MEC = T.let(:MEC, VitableConnect::ProductCode::TaggedSymbol)
      MEC2 = T.let(:MEC2, VitableConnect::ProductCode::TaggedSymbol)
      MEC_PLUS = T.let(:MEC_PLUS, VitableConnect::ProductCode::TaggedSymbol)
      MVP = T.let(:MVP, VitableConnect::ProductCode::TaggedSymbol)
      MVP2 = T.let(:MVP2, VitableConnect::ProductCode::TaggedSymbol)
      MVPSL = T.let(:MVPSL, VitableConnect::ProductCode::TaggedSymbol)
      MVPSL2 = T.let(:MVPSL2, VitableConnect::ProductCode::TaggedSymbol)
      VD = T.let(:VD, VitableConnect::ProductCode::TaggedSymbol)
      VV = T.let(:VV, VitableConnect::ProductCode::TaggedSymbol)
      ICHRA = T.let(:ICHRA, VitableConnect::ProductCode::TaggedSymbol)
      ICHRA_PREMIUM_PLUS =
        T.let(:ICHRA_PREMIUM_PLUS, VitableConnect::ProductCode::TaggedSymbol)
      ICHRA_REIMBURSEMENT_ONLY =
        T.let(
          :ICHRA_REIMBURSEMENT_ONLY,
          VitableConnect::ProductCode::TaggedSymbol
        )

      sig do
        override.returns(T::Array[VitableConnect::ProductCode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
