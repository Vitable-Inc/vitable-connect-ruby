# typed: strong

module VitableConnectAPI
  module Models
    # - `Medical` - Medical
    # - `Dental` - Dental
    # - `Vision` - Vision
    # - `Hospital` - Hospital
    module Category
      extend VitableConnectAPI::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnectAPI::Category) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MEDICAL = T.let(:Medical, VitableConnectAPI::Category::TaggedSymbol)
      DENTAL = T.let(:Dental, VitableConnectAPI::Category::TaggedSymbol)
      VISION = T.let(:Vision, VitableConnectAPI::Category::TaggedSymbol)
      HOSPITAL = T.let(:Hospital, VitableConnectAPI::Category::TaggedSymbol)

      sig do
        override.returns(T::Array[VitableConnectAPI::Category::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
