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

