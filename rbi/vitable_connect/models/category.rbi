# typed: strong

module VitableConnect
  module Models
    # - `Medical` - Medical
    # - `Dental` - Dental
    # - `Vision` - Vision
    # - `Hospital` - Hospital
    module Category
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnect::Category) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MEDICAL = T.let(:Medical, VitableConnect::Category::TaggedSymbol)
      DENTAL = T.let(:Dental, VitableConnect::Category::TaggedSymbol)
      VISION = T.let(:Vision, VitableConnect::Category::TaggedSymbol)
      HOSPITAL = T.let(:Hospital, VitableConnect::Category::TaggedSymbol)

      sig { override.returns(T::Array[VitableConnect::Category::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
