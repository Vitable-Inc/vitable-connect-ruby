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

  Employee = VitableConnect::Models::Employee

  EmployeeClass = VitableConnect::Models::EmployeeClass

  EmployeeListEnrollmentsParams = VitableConnect::Models::EmployeeListEnrollmentsParams

  EmployeeRetrieveParams = VitableConnect::Models::EmployeeRetrieveParams

  EmployeeUpdateParams = VitableConnect::Models::EmployeeUpdateParams

  Employer = VitableConnect::Models::Employer

  EmployerCreateParams = VitableConnect::Models::EmployerCreateParams

  EmployerEnsurePayrollIntegrationEmailParams =
    VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailParams

  EmployerListBenefitPlanYearEnrollmentsParams =
    VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams

  EmployerListBenefitPlanYearsParams = VitableConnect::Models::EmployerListBenefitPlanYearsParams

  EmployerListEmployeesParams = VitableConnect::Models::EmployerListEmployeesParams

  EmployerListHRISProvidersParams = VitableConnect::Models::EmployerListHRISProvidersParams

  EmployerListInvoicesParams = VitableConnect::Models::EmployerListInvoicesParams

  EmployerListParams = VitableConnect::Models::EmployerListParams

  EmployerListPayrollDeductionStatementsParams =
    VitableConnect::Models::EmployerListPayrollDeductionStatementsParams

  EmployerResponse = VitableConnect::Models::EmployerResponse

  EmployerRetrieveBenefitPlanYearParams = VitableConnect::Models::EmployerRetrieveBenefitPlanYearParams

  EmployerRetrieveHRISParams = VitableConnect::Models::EmployerRetrieveHRISParams

  EmployerRetrieveInvoicePdfParams = VitableConnect::Models::EmployerRetrieveInvoicePdfParams

  EmployerRetrieveParams = VitableConnect::Models::EmployerRetrieveParams

  EmployerRetrievePayrollAccessSetupParams =
    VitableConnect::Models::EmployerRetrievePayrollAccessSetupParams

  EmployerSubmitCensusSyncParams = VitableConnect::Models::EmployerSubmitCensusSyncParams

  EmployerSubmitPayrollAccessSetupParams = VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams

  EmployerUpdateParams = VitableConnect::Models::EmployerUpdateParams

  EmployerUpdateSettingsParams = VitableConnect::Models::EmployerUpdateSettingsParams

  Enrollment = VitableConnect::Models::Enrollment

  EnrollmentReissueParams = VitableConnect::Models::EnrollmentReissueParams

  EnrollmentRetrieveParams = VitableConnect::Models::EnrollmentRetrieveParams

  EnrollmentStatus = VitableConnect::Models::EnrollmentStatus

  EnrollmentTerminateParams = VitableConnect::Models::EnrollmentTerminateParams

  Group = VitableConnect::Models::Group

  GroupCreateParams = VitableConnect::Models::GroupCreateParams

  GroupListParams = VitableConnect::Models::GroupListParams

  GroupResponse = VitableConnect::Models::GroupResponse

  GroupRetrieveParams = VitableConnect::Models::GroupRetrieveParams

  Groups = VitableConnect::Models::Groups

  GroupUpdateParams = VitableConnect::Models::GroupUpdateParams

  MemberListDependentsParams = VitableConnect::Models::MemberListDependentsParams

  MemberListEmploymentsParams = VitableConnect::Models::MemberListEmploymentsParams

  MemberListEnrollmentsParams = VitableConnect::Models::MemberListEnrollmentsParams

  MemberListIDCardsParams = VitableConnect::Models::MemberListIDCardsParams

  MemberListParams = VitableConnect::Models::MemberListParams

  MemberListQualifyingLifeEventsParams = VitableConnect::Models::MemberListQualifyingLifeEventsParams

  MemberRetrieveHouseholdParams = VitableConnect::Models::MemberRetrieveHouseholdParams

  MemberRetrieveParams = VitableConnect::Models::MemberRetrieveParams

  OrganizationCreateParams = VitableConnect::Models::OrganizationCreateParams

  OrganizationListParams = VitableConnect::Models::OrganizationListParams

  Pagination = VitableConnect::Models::Pagination

  PlanListParams = VitableConnect::Models::PlanListParams

  WebhookEvent = VitableConnect::Models::WebhookEvent

  WebhookEventListDeliveriesParams = VitableConnect::Models::WebhookEventListDeliveriesParams

  WebhookEventListParams = VitableConnect::Models::WebhookEventListParams

  WebhookEventRetrieveParams = VitableConnect::Models::WebhookEventRetrieveParams
end
