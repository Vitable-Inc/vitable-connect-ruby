# typed: strong

module VitableConnect
  module Models
    # - `employer` - employer
    # - `employee` - employee
    module Type
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnect::Type) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EMPLOYER = T.let(:employer, VitableConnect::Type::TaggedSymbol)
      EMPLOYEE = T.let(:employee, VitableConnect::Type::TaggedSymbol)

      sig { override.returns(T::Array[VitableConnect::Type::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
