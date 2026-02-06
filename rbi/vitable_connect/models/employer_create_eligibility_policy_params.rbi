# typed: strong

module VitableConnect
  module Models
    class EmployerCreateEligibilityPolicyParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerCreateEligibilityPolicyParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Date when policy becomes effective
      sig { returns(Date) }
      attr_accessor :effective_date

      # Display name for the policy
      sig { returns(String) }
      attr_accessor :name

      # List of eligibility rules (at least one required)
      sig do
        returns(
          T::Array[VitableConnect::EmployerCreateEligibilityPolicyParams::Rule]
        )
      end
      attr_accessor :rules

      # ID of existing policy to replace (epol\_\*)
      sig { returns(T.nilable(String)) }
      attr_reader :policy_to_replace_id

      sig { params(policy_to_replace_id: String).void }
      attr_writer :policy_to_replace_id

      # Detailed description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig do
        params(
          effective_date: Date,
          name: String,
          rules:
            T::Array[
              VitableConnect::EmployerCreateEligibilityPolicyParams::Rule::OrHash
            ],
          policy_to_replace_id: String,
          description: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Date when policy becomes effective
        effective_date:,
        # Display name for the policy
        name:,
        # List of eligibility rules (at least one required)
        rules:,
        # ID of existing policy to replace (epol\_\*)
        policy_to_replace_id: nil,
        # Detailed description
        description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            effective_date: Date,
            name: String,
            rules:
              T::Array[
                VitableConnect::EmployerCreateEligibilityPolicyParams::Rule
              ],
            policy_to_replace_id: String,
            description: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Rule < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::EmployerCreateEligibilityPolicyParams::Rule,
              VitableConnect::Internal::AnyHash
            )
          end

        # Comparison operator
        sig { returns(String) }
        attr_accessor :operator

        # Type of eligibility rule
        sig { returns(String) }
        attr_accessor :rule_type

        # Value to compare against (can be string, number, boolean, or list)
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(operator: String, rule_type: String, value: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Comparison operator
          operator:,
          # Type of eligibility rule
          rule_type:,
          # Value to compare against (can be string, number, boolean, or list)
          value:
        )
        end

        sig do
          override.returns(
            { operator: String, rule_type: String, value: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
