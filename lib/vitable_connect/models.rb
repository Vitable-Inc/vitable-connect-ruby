# frozen_string_literal: true

module VitableConnect
  [
    VitableConnect::Internal::Type::BaseModel,
    *VitableConnect::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, VitableConnect::Internal::AnyHash) } }
  end

  VitableConnect::Internal::Util.walk_namespaces(VitableConnect::Models).each do |mod|
    case mod
    in VitableConnect::Internal::Type::Enum | VitableConnect::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  VitableConnect::Internal::Util.walk_namespaces(VitableConnect::Models)
                                .lazy
                                .grep(VitableConnect::Internal::Type::Union)
                                .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AuthIssueAccessTokenParams = VitableConnect::Models::AuthIssueAccessTokenParams

  BenefitEligibilityPolicy = VitableConnect::Models::BenefitEligibilityPolicy

  BenefitEligibilityPolicyResponse = VitableConnect::Models::BenefitEligibilityPolicyResponse

  BenefitEligibilityPolicyRetrieveParams = VitableConnect::Models::BenefitEligibilityPolicyRetrieveParams

  Employee = VitableConnect::Models::Employee

  EmployeeClass = VitableConnect::Models::EmployeeClass

  EmployeeListEnrollmentsParams = VitableConnect::Models::EmployeeListEnrollmentsParams

  EmployeeRetrieveParams = VitableConnect::Models::EmployeeRetrieveParams

  Employer = VitableConnect::Models::Employer

  EmployerCreateBenefitEligibilityPolicyParams =
    VitableConnect::Models::EmployerCreateBenefitEligibilityPolicyParams

  EmployerCreateParams = VitableConnect::Models::EmployerCreateParams

  EmployerListEmployeesParams = VitableConnect::Models::EmployerListEmployeesParams

  EmployerListParams = VitableConnect::Models::EmployerListParams

  EmployerResponse = VitableConnect::Models::EmployerResponse

  EmployerRetrieveParams = VitableConnect::Models::EmployerRetrieveParams

  EmployerSubmitCensusSyncParams = VitableConnect::Models::EmployerSubmitCensusSyncParams

  Enrollment = VitableConnect::Models::Enrollment

  EnrollmentRetrieveParams = VitableConnect::Models::EnrollmentRetrieveParams

  EnrollmentStatus = VitableConnect::Models::EnrollmentStatus

  Pagination = VitableConnect::Models::Pagination

  Type = VitableConnect::Models::Type
end
