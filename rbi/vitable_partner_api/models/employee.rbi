# typed: strong

module VitablePartnerAPI
  module Models
    class Employee < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::Employee,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Boolean) }
      attr_accessor :active

      sig { returns(String) }
      attr_accessor :employer_id

      sig { returns(VitablePartnerAPI::Member) }
      attr_reader :member

      sig { params(member: VitablePartnerAPI::Member::OrHash).void }
      attr_writer :member

      sig { returns(Date) }
      attr_accessor :start_date

      sig { returns(T.nilable(T::Array[VitablePartnerAPI::Dependent])) }
      attr_reader :dependents

      sig do
        params(dependents: T::Array[VitablePartnerAPI::Dependent::OrHash]).void
      end
      attr_writer :dependents

      sig { returns(T.nilable(Time)) }
      attr_accessor :terminated_at

      sig do
        params(
          id: String,
          active: T::Boolean,
          employer_id: String,
          member: VitablePartnerAPI::Member::OrHash,
          start_date: Date,
          dependents: T::Array[VitablePartnerAPI::Dependent::OrHash],
          terminated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        active:,
        employer_id:,
        member:,
        start_date:,
        dependents: nil,
        terminated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            employer_id: String,
            member: VitablePartnerAPI::Member,
            start_date: Date,
            dependents: T::Array[VitablePartnerAPI::Dependent],
            terminated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
