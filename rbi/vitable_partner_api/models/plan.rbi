# typed: strong

module VitablePartnerAPI
  module Models
    class Plan < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitablePartnerAPI::Plan, VitablePartnerAPI::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Plan name (e.g., MEC, MEC Plus)
      sig { returns(String) }
      attr_accessor :plan_name

      sig { params(id: String, plan_name: String).returns(T.attached_class) }
      def self.new(
        id:,
        # Plan name (e.g., MEC, MEC Plus)
        plan_name:
      )
      end

      sig { override.returns({ id: String, plan_name: String }) }
      def to_hash
      end
    end
  end
end
