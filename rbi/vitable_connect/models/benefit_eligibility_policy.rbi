# typed: strong

module VitableConnect
  module Models
    class BenefitEligibilityPolicy < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::BenefitEligibilityPolicy,
            VitableConnect::Internal::AnyHash
          )
        end

      # Serializer for Benefit Eligibility Policy entity.
      #
      # Eligibility policies define rules that determine which employees qualify for
      # benefits.
      sig { returns(VitableConnect::BenefitEligibilityPolicy::Data) }
      attr_reader :data

      sig do
        params(
          data: VitableConnect::BenefitEligibilityPolicy::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single benefit eligibility policy resource.
      sig do
        params(
          data: VitableConnect::BenefitEligibilityPolicy::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Serializer for Benefit Eligibility Policy entity.
        #
        # Eligibility policies define rules that determine which employees qualify for
        # benefits.
        data:
      )
      end

      sig do
        override.returns(
          { data: VitableConnect::BenefitEligibilityPolicy::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::BenefitEligibilityPolicy::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique eligibility policy identifier with 'epol\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # Whether this policy is currently active
        sig { returns(T::Boolean) }
        attr_accessor :active_in

        # Timestamp when the policy was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Date when this policy becomes effective
        sig { returns(Date) }
        attr_accessor :effective_date

        # ID of the employer this policy belongs to (empr\_\*)
        sig { returns(String) }
        attr_accessor :employer_id

        # Display name for the eligibility policy
        sig { returns(String) }
        attr_accessor :name

        # List of eligibility rules that must be satisfied
        sig do
          returns(
            T::Array[VitableConnect::BenefitEligibilityPolicy::Data::Rule]
          )
        end
        attr_accessor :rules

        # Timestamp when the policy was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Detailed description of the policy
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # ID of the policy this one replaces, if any (epol\_\*)
        sig { returns(T.nilable(String)) }
        attr_accessor :replaced_policy_id

        # Serializer for Benefit Eligibility Policy entity.
        #
        # Eligibility policies define rules that determine which employees qualify for
        # benefits.
        sig do
          params(
            id: String,
            active_in: T::Boolean,
            created_at: Time,
            effective_date: Date,
            employer_id: String,
            name: String,
            rules:
              T::Array[
                VitableConnect::BenefitEligibilityPolicy::Data::Rule::OrHash
              ],
            updated_at: Time,
            description: T.nilable(String),
            replaced_policy_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique eligibility policy identifier with 'epol\_' prefix
          id:,
          # Whether this policy is currently active
          active_in:,
          # Timestamp when the policy was created
          created_at:,
          # Date when this policy becomes effective
          effective_date:,
          # ID of the employer this policy belongs to (empr\_\*)
          employer_id:,
          # Display name for the eligibility policy
          name:,
          # List of eligibility rules that must be satisfied
          rules:,
          # Timestamp when the policy was last updated
          updated_at:,
          # Detailed description of the policy
          description: nil,
          # ID of the policy this one replaces, if any (epol\_\*)
          replaced_policy_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active_in: T::Boolean,
              created_at: Time,
              effective_date: Date,
              employer_id: String,
              name: String,
              rules:
                T::Array[VitableConnect::BenefitEligibilityPolicy::Data::Rule],
              updated_at: Time,
              description: T.nilable(String),
              replaced_policy_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Rule < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::BenefitEligibilityPolicy::Data::Rule,
                VitableConnect::Internal::AnyHash
              )
            end

          # Comparison operator (e.g., 'equals', 'greater_than', 'in')
          sig { returns(String) }
          attr_accessor :operator

          # Type of eligibility rule (e.g., 'employment_status', 'hours_per_week',
          # 'waiting_period')
          sig { returns(String) }
          attr_accessor :rule_type

          # Value to compare against (type depends on rule_type)
          sig { returns(T.anything) }
          attr_accessor :value

          # Individual eligibility rule within a policy.
          sig do
            params(
              operator: String,
              rule_type: String,
              value: T.anything
            ).returns(T.attached_class)
          end
          def self.new(
            # Comparison operator (e.g., 'equals', 'greater_than', 'in')
            operator:,
            # Type of eligibility rule (e.g., 'employment_status', 'hours_per_week',
            # 'waiting_period')
            rule_type:,
            # Value to compare against (type depends on rule_type)
            value:
          )
          end

          sig do
            override.returns(
              { operator: String, rule_type: String, value: T.anything }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
