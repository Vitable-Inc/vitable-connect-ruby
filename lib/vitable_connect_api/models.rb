# frozen_string_literal: true

module VitableConnectAPI
  [
    VitableConnectAPI::Internal::Type::BaseModel,
    *VitableConnectAPI::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, VitableConnectAPI::Internal::AnyHash) } }
  end

  VitableConnectAPI::Internal::Util.walk_namespaces(VitableConnectAPI::Models).each do |mod|
    case mod
    in VitableConnectAPI::Internal::Type::Enum | VitableConnectAPI::Internal::Type::Union
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

  VitableConnectAPI::Internal::Util.walk_namespaces(VitableConnectAPI::Models)
                                   .lazy
                                   .grep(VitableConnectAPI::Internal::Type::Union)
                                   .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  BenefitEligibilityPolicyAPI = VitableConnectAPI::Models::BenefitEligibilityPolicyAPI

  BenefitProductListParams = VitableConnectAPI::Models::BenefitProductListParams

  BenefitProducts = VitableConnectAPI::Models::BenefitProducts

  Category = VitableConnectAPI::Models::Category

  CoverageTier = VitableConnectAPI::Models::CoverageTier

  Dependent = VitableConnectAPI::Models::Dependent

  DependentRetrieveParams = VitableConnectAPI::Models::DependentRetrieveParams

  DependentUpdateParams = VitableConnectAPI::Models::DependentUpdateParams

  Employee = VitableConnectAPI::Models::Employee

  EmployeeRetrieveParams = VitableConnectAPI::Models::EmployeeRetrieveParams

  Employees = VitableConnectAPI::Models::Employees

  EmployeeTerminateParams = VitableConnectAPI::Models::EmployeeTerminateParams

  EmployeeUpdateParams = VitableConnectAPI::Models::EmployeeUpdateParams

  Employer = VitableConnectAPI::Models::Employer

  EmployerCreateParams = VitableConnectAPI::Models::EmployerCreateParams

  EmployerListParams = VitableConnectAPI::Models::EmployerListParams

  EmployerRetrieveParams = VitableConnectAPI::Models::EmployerRetrieveParams

  Employers = VitableConnectAPI::Models::Employers

  EmployerUpdateParams = VitableConnectAPI::Models::EmployerUpdateParams

  Enrollment = VitableConnectAPI::Models::Enrollment

  EnrollmentListPlansParams = VitableConnectAPI::Models::EnrollmentListPlansParams

  EnrollmentReissueParams = VitableConnectAPI::Models::EnrollmentReissueParams

  EnrollmentRetrieveParams = VitableConnectAPI::Models::EnrollmentRetrieveParams

  Members = VitableConnectAPI::Models::Members

  PlanTier = VitableConnectAPI::Models::PlanTier

  PlanYearRetrieveParams = VitableConnectAPI::Models::PlanYearRetrieveParams

  PlanYearUpdateParams = VitableConnectAPI::Models::PlanYearUpdateParams

  ProductCode = VitableConnectAPI::Models::ProductCode

  Sex = VitableConnectAPI::Models::Sex
end
