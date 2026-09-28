## 5.1.0 - 2026-09-28
### Added
* **`VitableConnect::Types::PlanYearIchraAffordability`** — new enum with `AFFORDABLE` and `NOT_AFFORDABLE` values indicating whether an ICHRA plan year meets affordability requirements.
* **`VitableConnect::Types::MemberEnrollment#plan_year_ichra_affordability`** — new nullable field exposing the ICHRA affordability status for a member's enrollment.
* **`VitableConnect::Types::PlanYearEnrollment#plan_year_ichra_affordability`** — new nullable field exposing the ICHRA affordability status on a plan year enrollment.

## 5.0.0 - 2026-09-24
### Breaking Changes
* **`VitableConnect::Types::AccessMethod`** has been removed. Replace any references with `VitableConnect::Types::PayrollAccessMethod`, which carries the same `SELF_SETUP` and `NEEDS_HELP` values.
* **`VitableConnect::Types::AdditionalAccessMethod`** has been removed. The `additional_access_method` field on `SubmitPayrollAccessSetupRequest` now uses `VitableConnect::Types::PayrollAccessMethod`; update any constant references accordingly.
* **`VitableConnect::Types::BenefitPlanNetwork#address`** now returns a `DetailedAddress` instead of an `Address`. Update any code that reads fields from this object to use the new `DetailedAddress` shape.
### Added
* **`VitableConnect::Types::PayrollAccessMethod`** — unified enum replacing the former `AccessMethod` and `AdditionalAccessMethod` enums, used for both primary and additional payroll access method fields.
* **`VitableConnect::Types::DetailedAddress`** — new structured address model with `address_line_1`, `address_line_2`, `city`, `zipcode`, `state`, `latitude`, `longitude`, `county_fips_code`, and `county_name` fields.

## 4.1.0 - 2026-09-22
### Added
* **`VitableConnect::Types::MemberEnrollment#enrolled_date`** — new nullable `String` field exposing the date a member was enrolled, available alongside the existing `issued_date` and `enrollment_window_start` fields.

## 4.0.0 - 2026-09-16
### Breaking Changes
* **`VitableConnect::Organizations::Client#create`** has been removed. Any calls to `client.organizations.create(...)` will raise `NoMethodError`; remove or replace these call sites.
* **`VitableConnect::Organizations::Types::CreateOrganizationRequest`** has been removed. Replace any direct references to this class with your own request construction or remove them entirely.
* **`VitableConnect::Types::Organization`** has been removed. Any code that references this class (e.g. `is_a?` checks, constant lookups, or return-value handling) must be updated; use `VitableConnect::Types::OrganizationMembership` for organization data returned by the list endpoint.

## 3.0.0 - 2026-09-11
### Breaking Changes
* **`VitableConnect::Types::CreateOrganizationRequestType`** has been removed. Replace any references with `VitableConnect::Types::OrganizationType`, which carries the same enum values.
* **`VitableConnect::Types::OrganizationsListResponse#organizations`** now returns an array of `OrganizationMembership` instead of `Organization`. Update any code that accesses fields on these objects to use the new `OrganizationMembership` shape.
### Added
* **`VitableConnect::Types::OrganizationMembership`** — new model returned in the organizations list, containing `id`, `name`, `type`, `idp_org_id`, `idp_provider`, `super_in`, and `role` fields so callers can see the authenticated user's role within each organization.
* **`VitableConnect::Types::OrganizationUserRole`** — new enum with values `ADMIN`, `OPERATIONS`, `SALES`, and `ENROLLMENT_AGENT`, used by `OrganizationMembership#role`.

## 2.1.0 - 2026-09-08
### Added
* **`vitable_organization`** — optional parameter added to all employer, enrollment, and members client methods, sending the `X-Vitable-Organization` HTTP header to scope requests to a specific organization.
* **`VitableConnect::Types::XVitableOrganization`** — new type for serializing and deserializing the `X-Vitable-Organization` header value.
* **`VitableConnect::Employers::Types::ListHrisProvidersEmployersRequest`** — new request type for the `list_hris_providers` endpoint, supporting the `vitable_organization` header field.
* **`vitable_organization`** field added to enrollment request types `GetEnrollmentsRequest`, `ReissueEnrollmentRequest`, and `TerminateEnrollmentRequest`, mapping to the `X-Vitable-Organization` header.

## 2.0.0 - 2026-09-08
### Breaking Changes
* **`VitableConnect::Types::Operation`** has been renamed to **`VitableConnect::Types::GroupMemberSyncFailureOperation`**. Update any references to `Operation` (e.g. constant lookups or `is_a?` checks) to use `GroupMemberSyncFailureOperation` instead.

