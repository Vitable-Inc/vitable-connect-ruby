# frozen_string_literal: true

module VitablePartnerAPI
  [
    VitablePartnerAPI::Internal::Type::BaseModel,
    *VitablePartnerAPI::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, VitablePartnerAPI::Internal::AnyHash) } }
  end

  VitablePartnerAPI::Internal::Util.walk_namespaces(VitablePartnerAPI::Models).each do |mod|
    case mod
    in VitablePartnerAPI::Internal::Type::Enum | VitablePartnerAPI::Internal::Type::Union
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

  VitablePartnerAPI::Internal::Util.walk_namespaces(VitablePartnerAPI::Models)
                                   .lazy
                                   .grep(VitablePartnerAPI::Internal::Type::Union)
                                   .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  BenefitProduct = VitablePartnerAPI::Models::BenefitProduct

  BenefitProductGenerateQuoteParams = VitablePartnerAPI::Models::BenefitProductGenerateQuoteParams

  BenefitProductListParams = VitablePartnerAPI::Models::BenefitProductListParams

  BenefitProducts = VitablePartnerAPI::Models::BenefitProducts

  CreateDependentRequest = VitablePartnerAPI::Models::CreateDependentRequest

  CreateEligibilityPolicyRequest = VitablePartnerAPI::Models::CreateEligibilityPolicyRequest

  CreateEmployerRequest = VitablePartnerAPI::Models::CreateEmployerRequest

  CreateQualifyingLifeEventRequest = VitablePartnerAPI::Models::CreateQualifyingLifeEventRequest

  Dependent = VitablePartnerAPI::Models::Dependent

  DependentUpdateParams = VitablePartnerAPI::Models::DependentUpdateParams

  ElectBenefitsRequest = VitablePartnerAPI::Models::ElectBenefitsRequest

  EligibilityPolicy = VitablePartnerAPI::Models::EligibilityPolicy

  Employee = VitablePartnerAPI::Models::Employee

  EmployeeRetrieveParams = VitablePartnerAPI::Models::EmployeeRetrieveParams

  Employees = VitablePartnerAPI::Models::Employees

  EmployeeTerminateParams = VitablePartnerAPI::Models::EmployeeTerminateParams

  EmployeeUpdateParams = VitablePartnerAPI::Models::EmployeeUpdateParams

  Employer = VitablePartnerAPI::Models::Employer

  EmployerCreateEligibilityPolicyParams = VitablePartnerAPI::Models::EmployerCreateEligibilityPolicyParams

  EmployerCreateParams = VitablePartnerAPI::Models::EmployerCreateParams

  EmployerListParams = VitablePartnerAPI::Models::EmployerListParams

  EmployerRetrieveParams = VitablePartnerAPI::Models::EmployerRetrieveParams

  Employers = VitablePartnerAPI::Models::Employers

  EmployerUpdateParams = VitablePartnerAPI::Models::EmployerUpdateParams

  Enrollment = VitablePartnerAPI::Models::Enrollment

  EnrollmentGetEligiblePlansParams = VitablePartnerAPI::Models::EnrollmentGetEligiblePlansParams

  EnrollmentReissueParams = VitablePartnerAPI::Models::EnrollmentReissueParams

  Member = VitablePartnerAPI::Models::Member

  Plan = VitablePartnerAPI::Models::Plan

  PlanYear = VitablePartnerAPI::Models::PlanYear

  PlanYearUpdateParams = VitablePartnerAPI::Models::PlanYearUpdateParams

  QualifyingLifeEvent = VitablePartnerAPI::Models::QualifyingLifeEvent

  Quote = VitablePartnerAPI::Models::Quote

  QuoteRequest = VitablePartnerAPI::Models::QuoteRequest

  ReissueEnrollmentRequest = VitablePartnerAPI::Models::ReissueEnrollmentRequest

  UpdateDependentRequest = VitablePartnerAPI::Models::UpdateDependentRequest

  UpdateEmployerRequest = VitablePartnerAPI::Models::UpdateEmployerRequest

  UpdatePlanYearRequest = VitablePartnerAPI::Models::UpdatePlanYearRequest
end
