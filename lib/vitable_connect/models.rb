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

  BenefitEligibilityPolicyRetrieveParams = VitableConnect::Models::BenefitEligibilityPolicyRetrieveParams

  Category = VitableConnect::Models::Category

  Employee = VitableConnect::Models::Employee

  EmployeeClass = VitableConnect::Models::EmployeeClass

  EmployeeResponse = VitableConnect::Models::EmployeeResponse

  EmployeeRetrieveParams = VitableConnect::Models::EmployeeRetrieveParams

  Employees = VitableConnect::Models::Employees

  Employer = VitableConnect::Models::Employer

  EmployerCreateEligibilityPolicyParams = VitableConnect::Models::EmployerCreateEligibilityPolicyParams

  EmployerCreateParams = VitableConnect::Models::EmployerCreateParams

  EmployerListParams = VitableConnect::Models::EmployerListParams

  EmployerResponse = VitableConnect::Models::EmployerResponse

  EmployerRetrieveParams = VitableConnect::Models::EmployerRetrieveParams

  Employers = VitableConnect::Models::Employers

  Enrollment = VitableConnect::Models::Enrollment

  EnrollmentResponse = VitableConnect::Models::EnrollmentResponse

  EnrollmentRetrieveParams = VitableConnect::Models::EnrollmentRetrieveParams

  EnrollmentStatus = VitableConnect::Models::EnrollmentStatus

  Pagination = VitableConnect::Models::Pagination

  ProductCode = VitableConnect::Models::ProductCode

  Type = VitableConnect::Models::Type
end
