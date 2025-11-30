# typed: strong

module VitableConnectAPI
  module Models
    class EmployerCreateEligibilityPolicyParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EmployerCreateEligibilityPolicyParams,
            VitableConnectAPI::Internal::AnyHash
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
          T::Array[
            VitableConnectAPI::EmployerCreateEligibilityPolicyParams::Rule
          ]
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
              VitableConnectAPI::EmployerCreateEligibilityPolicyParams::Rule::OrHash
            ],
          policy_to_replace_id: String,
          description: T.nilable(String),
          request_options: VitableConnectAPI::RequestOptions::OrHash
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
                VitableConnectAPI::EmployerCreateEligibilityPolicyParams::Rule
              ],
            policy_to_replace_id: String,
            description: T.nilable(String),
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Rule < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::EmployerCreateEligibilityPolicyParams::Rule,
              VitableConnectAPI::Internal::AnyHash
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
