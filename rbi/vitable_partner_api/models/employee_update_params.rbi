# typed: strong

module VitablePartnerAPI
  module Models
    class EmployeeUpdateParams < VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest
      extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
      include VitablePartnerAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::EmployeeUpdateParams,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig do
        params(
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: VitablePartnerAPI::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
