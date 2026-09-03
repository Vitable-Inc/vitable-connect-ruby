# Reference
## Auth
<details><summary><code>client.auth.<a href="/lib/VitableConnect/auth/client.rb">issue_access_token</a>(request) -> VitableConnect::Types::AccessTokenResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issues a short-lived access token from the authenticated API key. Access tokens can optionally be bound to a specific employer or employee for scoped access. Tokens expire after 15 minutes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.auth.issue_access_token(grant_type: "client_credentials")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**grant_type:** `VitableConnect::Types::GrantType` 

Token issuance flow. Currently only 'client_credentials' supported.

* `client_credentials` - client_credentials
    
</dd>
</dl>

<dl>
<dd>

**bound_entity:** `VitableConnect::Types::BoundEntity` — Optional entity to bind the token to for scoped access
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Auth::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Employees
<details><summary><code>client.employees.<a href="/lib/VitableConnect/employees/client.rb">get</a>(employee_id:) -> VitableConnect::Types::EmployeeResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves detailed information for a specific employee by ID. Returns employee details including personal information, employment status, classification and compensation-type effective dates, compensation type, and payroll deductions from the most recent statement period. Deductions reflect a snapshot of the current period and are replaced when a new statement is generated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employees.get(employee_id: "empl_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employee_id:** `String` — Unique employee identifier (empl_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employees.<a href="/lib/VitableConnect/employees/client.rb">update</a>(employee_id:, request) -> VitableConnect::Types::EmployeeResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates employee personal, contact, address, and employment fields. This endpoint currently supports email, phone, gender, address, employee_class, start_date, and compensation_type. effective_date is required and applies to employee_class and compensation_type when those fields are included in the request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employees.update(
  employee_id: "empl_abc123def456",
  employee_class: "Full Time",
  start_date: "2023-01-15",
  compensation_type: "Salary",
  effective_date: "2023-03-01"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employee_id:** `String` — Unique employee identifier (empl_*)
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email address
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Phone number
    
</dd>
</dl>

<dl>
<dd>

**gender:** `VitableConnect::Types::Gender` 

Gender identity

* `Male` - Male
* `Female` - Female
* `Transgender` - Transgender
* `Non-binary` - Non-binary
* `Prefer not to respond` - Prefer not to respond
    
</dd>
</dl>

<dl>
<dd>

**address:** `VitableConnect::Types::EmployeeAddressInput` — Employee's residential address
    
</dd>
</dl>

<dl>
<dd>

**employee_class:** `VitableConnect::Types::EmployeeClass` 

Employment classification

* `Full Time` - Full Time
* `Part Time` - Part Time
* `Temporary` - Temporary
* `Intern` - Intern
* `Seasonal` - Seasonal
* `Individual Contractor` - Individual Contractor
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Employment start date
    
</dd>
</dl>

<dl>
<dd>

**compensation_type:** `VitableConnect::Types::CompensationType` 

Employee compensation type

* `Salary` - Salary
* `Hourly` - Hourly
    
</dd>
</dl>

<dl>
<dd>

**effective_date:** `String` — Past or present date applied to each tracked employment field included in this request
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employees.<a href="/lib/VitableConnect/employees/client.rb">list_enrollments</a>(employee_id:) -> VitableConnect::Types::EnrollmentListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a paginated list of benefit enrollments for an employee.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employees.list_enrollments(
  employee_id: "empl_abc123def456",
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employee_id:** `String` — Unique employee identifier (empl_*)
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employees::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Employers
<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list</a>() -> VitableConnect::Types::OrganizationEmployerListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the caller's employer book — every employer with its computed columns (enrollment-rate summary, benefit-family tags, HRIS connection, benefit-lifecycle stage) merged with the employer's flat CRM fields (legal name, EIN, contact, address, timestamps). The book is derived from the authenticated principal: one organization's employers, or every organization's for a caller whose reach is not a single organization. Supports search by display name, legal name, or exact EIN, employer id or contact email, benefit-family/lifecycle/HRIS filters, and page/limit pagination.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list(
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**benefit_family:** `VitableConnect::Types::BenefitFamilyParamItem` — Filter to employers with at least one active benefit in these families.
    
</dd>
</dl>

<dl>
<dd>

**benefit_lifecycle_stage:** `VitableConnect::Types::BenefitLifecycleStageItem` — Filter to employers in one of these computed benefit-lifecycle stages.
    
</dd>
</dl>

<dl>
<dd>

**hris_provider:** `String` — Filter to employers whose HRIS connection is with one of these payroll providers (e.g. `ADP RUN`). Matched case-insensitively; free text, so read the available values from the HRIS-providers endpoint rather than assuming a fixed set.
    
</dd>
</dl>

<dl>
<dd>

**hris_status:** `VitableConnect::Types::HrisStatusItem` — Filter to employers whose HRIS connection is in one of these statuses.
    
</dd>
</dl>

<dl>
<dd>

**include_cancelled:** `Internal::Types::Boolean` — Include cancelled employers (hidden by default unless their stage is explicitly requested).
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number.
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Employer filter. Matches the display name or the legal name case-insensitively as a substring, or one of these exactly: the EIN (with or without its dash), the employer id, or the contact email of one of the employer's non-disabled admins.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">create</a>(request) -> VitableConnect::Types::EmployerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new employer for the authenticated organization. Requires employer name, legal name, EIN, email, and address information. Returns the created employer with its assigned ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.create(
  name: "NewCo Industries",
  legal_name: "NewCo Industries LLC",
  ein: "12-3456789",
  email: "hr@newco.com",
  address: {
    address_line1: "789 Business Blvd",
    address_line2: "Floor 5",
    city: "Seattle",
    state: "WA",
    zipcode: "98101"
  },
  phone_number: "2065550100",
  reference_id: "partner-emp-001"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Employer display name
    
</dd>
</dl>

<dl>
<dd>

**legal_name:** `String` — Legal business name
    
</dd>
</dl>

<dl>
<dd>

**ein:** `String` — Employer Identification Number (format: XX-XXXXXXX)
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email address for billing and communications
    
</dd>
</dl>

<dl>
<dd>

**address:** `VitableConnect::Types::EmployerAddressInput` — Employer address
    
</dd>
</dl>

<dl>
<dd>

**phone_number:** `String` — Employer phone number (10-digit US format, e.g. 5551234567)
    
</dd>
</dl>

<dl>
<dd>

**reference_id:** `String` — External reference ID for this employer
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">get</a>(employer_id:) -> VitableConnect::Types::EmployerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves detailed information for a specific employer by ID. The employer must belong to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.get(employer_id: "empr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">update</a>(employer_id:, request) -> VitableConnect::Types::EmployerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing employer. All fields are optional — only provided fields are updated. PO Box addresses are rejected.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.update(employer_id: "empr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Employer display name
    
</dd>
</dl>

<dl>
<dd>

**legal_name:** `String` — Legal business name
    
</dd>
</dl>

<dl>
<dd>

**address:** `VitableConnect::Types::UpdateEmployerAddressInput` — Employer address
    
</dd>
</dl>

<dl>
<dd>

**active:** `Internal::Types::Boolean` — Whether the employer is active
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list_benefit_plan_years</a>(employer_id:) -> VitableConnect::Types::EmployerBenefitPlanYearsListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the employer's benefit plan years (all years, or one when `year` is given), each with its benefits, offered states, benefit families, and the year-level enrollment roll-up. The caller must be authorized for the employer; an unknown or unauthorized employer returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list_benefit_plan_years(employer_id: "empr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">get_benefit_plan_year</a>(employer_id:, benefit_plan_year_id:) -> VitableConnect::Types::EmployerBenefitPlanYearResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one benefit plan year in full — its benefit details plus the per-benefit enrollment rate and SPD link — addressed by its `benefit_plan_year_id`. The caller must be authorized for the employer; an unknown or unauthorized plan year returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.get_benefit_plan_year(
  employer_id: "empr_abc123def456",
  benefit_plan_year_id: "plyr_abc123def456"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**benefit_plan_year_id:** `String` — Unique benefit-plan-year identifier (plyr_*).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list_benefit_plan_year_enrollments</a>(employer_id:, benefit_plan_year_id:) -> VitableConnect::Types::PlanYearEnrollmentListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of every member with an enrollment in one of an employer's plan years, any election status: what they elected, where their coverage stands, dependent count, carrier, plan, tier, and the plan's total monthly cost. The caller must be authorized for the employer `empr_<...>`; an unknown or unauthorized employer, or an unknown plan year `plyr_<...>`, returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list_benefit_plan_year_enrollments(
  employer_id: "empr_abc123def456",
  benefit_plan_year_id: "plyr_abc123def456",
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*).
    
</dd>
</dl>

<dl>
<dd>

**benefit_plan_year_id:** `String` — Unique benefit-plan-year identifier (plyr_*).
    
</dd>
</dl>

<dl>
<dd>

**election_status:** `VitableConnect::Types::ElectionStatusItem` — Filter by election status. Repeat the parameter to match several.
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Case-insensitive search. Matches member name partially, and the `member_id` exactly — either your own reference id or the prefixed `grpmbr_<...>` id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">submit_census_sync</a>(employer_id:, request) -> VitableConnect::Types::CensusSyncDetailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits a census sync payload for the specified employer. The employees in the payload will be queued for processing. Returns an accepted response with the timestamp of acceptance.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.submit_census_sync(
  employer_id: "empr_abc123def456",
  employees: [{
    reference_id: "EMP-001",
    first_name: "Jane",
    last_name: "Doe",
    date_of_birth: "1990-05-15",
    email: "jane.doe@acme.com",
    phone: "4155550100",
    address: {
      address_line1: "123 Main Street",
      address_line2: "Apt 4B",
      city: "San Francisco",
      state: "CA",
      zipcode: "94102"
    },
    start_date: "2024-01-15",
    employee_class: "Full Time",
    compensation_type: "Salary"
  }, {
    first_name: "John",
    last_name: "Smith",
    date_of_birth: "1985-11-20",
    email: "john.smith@acme.com",
    phone: "4155550101",
    start_date: "2024-03-01",
    employee_class: "Part Time",
    compensation_type: "Hourly"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**employees:** `Internal::Types::Array[VitableConnect::Types::CensusSyncEmployeeRequest]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list_employees</a>(employer_id:) -> VitableConnect::Types::EmployeeListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a paginated list of employees for a specific employer. The caller must be authorized for the employer; an unknown or unauthorized employer returns 404. Results are paginated using page and limit parameters and can be narrowed with a case-insensitive `search` (first name, last name, or email) and an `employment_status` filter (active or terminated). Each employee includes payroll deductions from the most recent statement period. When a new deduction statement is generated, previous period deductions are replaced.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list_employees(
  employer_id: "empr_abc123def456",
  limit: 20,
  page: 1,
  search: "jane"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**employment_status:** `VitableConnect::Types::EmployeeStatus` — Filter by employment status (active or terminated)
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Case-insensitive search across employee first name, last name, and email
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">get_hris</a>(employer_id:) -> VitableConnect::Types::EmployerHrisResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the employer's HRIS connection — provider, status, last sync, and synced row count — or null when the employer has no integration. The caller must be authorized for the employer; an unknown or unauthorized employer returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.get_hris(employer_id: "empr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list_invoices</a>(employer_id:) -> VitableConnect::Types::EmployerInvoicesListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a cursor-paginated page of the employer's billing invoices, newest first. Pass the `next_offset` from a previous page as `offset` to fetch the next page. The caller must be authorized for the employer; an unknown or unauthorized employer returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list_invoices(
  employer_id: "empr_abc123def456",
  limit: 20
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of invoices per page
    
</dd>
</dl>

<dl>
<dd>

**offset:** `String` — Opaque cursor from a previous page's next_offset
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">get_invoice_pdf</a>(employer_id:, invoice_id:) -> VitableConnect::Types::EmployerInvoicePdfResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the time-limited PDF download link for a single invoice belonging to the employer's billing customer. `invoice_id` is the external Chargebee id (not a prefixed UUID). The caller must be authorized for the employer; an unknown or unauthorized employer or invoice returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.get_invoice_pdf(
  employer_id: "empr_abc123def456",
  invoice_id: "INV-00042"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**invoice_id:** `String` — External Chargebee invoice id (not a prefixed UUID).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">get_payroll_access_setup</a>(employer_id:) -> VitableConnect::Types::PayrollAccessSetupStatusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return whether the employer has submitted payroll access setup.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.get_payroll_access_setup(employer_id: "empr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">submit_payroll_access_setup</a>(employer_id:, request) -> VitableConnect::Types::PayrollAccessSetupStatusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submit the employer's payroll access setup answers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.submit_payroll_access_setup(
  employer_id: "empr_abc123def456",
  employees_in_payroll_acknowledged: true,
  payroll_data_impacts_eligibility_acknowledged: true,
  classifications_accurate: true,
  all_benefit_eligible_employees_present: true,
  is_controlled_group: true,
  access_method: "SELF_SETUP",
  has_additional_payroll_system: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**employees_in_payroll_acknowledged:** `Internal::Types::Boolean` — Attestation that all benefit-eligible employees appear in the payroll system.
    
</dd>
</dl>

<dl>
<dd>

**payroll_data_impacts_eligibility_acknowledged:** `Internal::Types::Boolean` — Attestation that changes to payroll data affect benefit eligibility.
    
</dd>
</dl>

<dl>
<dd>

**classifications_accurate:** `Internal::Types::Boolean` — Attestation that employee classifications in payroll are accurate. Set `false` to report corrections in the fields below.
    
</dd>
</dl>

<dl>
<dd>

**classification_correction_source:** `VitableConnect::Types::ClassificationCorrectionSource` — Where corrected classifications come from, when `classifications_accurate` is `false`.
    
</dd>
</dl>

<dl>
<dd>

**misclassified_employee_names:** `Internal::Types::Array[String]` — Names of employees whose payroll classification needs correcting.
    
</dd>
</dl>

<dl>
<dd>

**remaining_employee_action:** `VitableConnect::Types::RemainingEmployeeAction` — How to handle employees still missing from the payroll system.
    
</dd>
</dl>

<dl>
<dd>

**all_benefit_eligible_employees_present:** `Internal::Types::Boolean` — Attestation that every benefit-eligible employee is present in payroll.
    
</dd>
</dl>

<dl>
<dd>

**missing_employee_resolution:** `VitableConnect::Types::MissingEmployeeResolution` — How any missing employees will be added, when some are absent.
    
</dd>
</dl>

<dl>
<dd>

**is_controlled_group:** `Internal::Types::Boolean` — Whether this employer belongs to a controlled group of related entities.
    
</dd>
</dl>

<dl>
<dd>

**same_payroll_covers_other_eins:** `Internal::Types::Boolean` — Whether this payroll system also covers other EINs in the controlled group.
    
</dd>
</dl>

<dl>
<dd>

**access_method:** `VitableConnect::Types::AccessMethod` 
    
</dd>
</dl>

<dl>
<dd>

**login_url:** `String` — Sign-in URL for the payroll system.
    
</dd>
</dl>

<dl>
<dd>

**username:** `String` — Username Vitable should use to access the payroll system.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Phone number used for payroll-system verification codes.
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` — Password Vitable should use to access the payroll system.
    
</dd>
</dl>

<dl>
<dd>

**integration_confirmed:** `Internal::Types::Boolean` — Whether the payroll integration has been confirmed as working.
    
</dd>
</dl>

<dl>
<dd>

**has_additional_payroll_system:** `Internal::Types::Boolean` — Whether a second payroll system is in use. When `true`, supply the `additional_*` fields below.
    
</dd>
</dl>

<dl>
<dd>

**additional_access_method:** `VitableConnect::Types::AdditionalAccessMethod` — How Vitable will access the second payroll system.
    
</dd>
</dl>

<dl>
<dd>

**additional_login_url:** `String` — Sign-in URL for the second payroll system.
    
</dd>
</dl>

<dl>
<dd>

**additional_username:** `String` — Username Vitable should use for the second payroll system.
    
</dd>
</dl>

<dl>
<dd>

**additional_phone:** `String` — Phone number used for second payroll-system verification codes.
    
</dd>
</dl>

<dl>
<dd>

**additional_password:** `String` — Password Vitable should use for the second payroll system.
    
</dd>
</dl>

<dl>
<dd>

**additional_integration_confirmed:** `Internal::Types::Boolean` — Whether the second payroll integration has been confirmed as working.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list_payroll_deduction_statements</a>(employer_id:) -> VitableConnect::Types::EmployerPayrollDeductionStatementListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of the employer's payroll-deduction statements, newest period first, each with its period, generation date, distinct employee count, total deduction, change-file link, and deduction frequency. Statements superseded by a later correction are excluded. The caller must be authorized for the employer; an unknown or unauthorized employer returns 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list_payroll_deduction_statements(
  employer_id: "empr_abc123def456",
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Maximum number of statements per page
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number to retrieve (starts at 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">ensure_payroll_integration_email</a>(employer_id:) -> VitableConnect::Types::PayrollIntegrationEmailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Provision and return the employer's payroll integration email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.ensure_payroll_integration_email(employer_id: "empr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">update_settings</a>(employer_id:, request) -> VitableConnect::Types::EmployerSettingsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates configuration settings for a specific employer. The employer must belong to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.update_settings(
  employer_id: "empr_abc123def456",
  pay_frequency: "bi_weekly"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**employer_id:** `String` — Unique employer identifier (empr_*)
    
</dd>
</dl>

<dl>
<dd>

**pay_frequency:** `VitableConnect::Types::DeductionFrequency` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.employers.<a href="/lib/VitableConnect/employers/client.rb">list_hris_providers</a>() -> VitableConnect::Types::OrganizationHrisProvidersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the distinct HRIS/payroll providers across the same book `GET /v1/employers` returns, sorted for display. Use these as the values for the employers list's `hris_provider` filter — filter on `provider`, show `provider_label`. The stored providers are free text, so they cannot be enumerated in advance.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.employers.list_hris_providers
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `VitableConnect::Employers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Enrollments
<details><summary><code>client.enrollments.<a href="/lib/VitableConnect/enrollments/client.rb">get</a>(enrollment_id:) -> VitableConnect::Types::EnrollmentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single enrollment: the employee and employer it belongs to, the benefit product, its status, the coverage period, the employee payroll deduction and employer contribution, and the enrolled plan's Summary of Benefits and Coverage document when one is on file. An enrollment the caller cannot reach is indistinguishable from one that does not exist.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.enrollments.get(enrollment_id: "enrl_AAAAAAAAAAAAAAAAAAAAAQ")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**enrollment_id:** `String` — Unique enrollment identifier (enrl_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Enrollments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.enrollments.<a href="/lib/VitableConnect/enrollments/client.rb">reissue</a>(enrollment_id:, request) -> VitableConnect::Types::ReissueEnrollmentResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Closes the targeted enrollment and creates a new unanswered enrollment for the same member and plan year. VPC never requires a qualifying life event; other products require an accepted, member-owned event outside open enrollment. User-backed callers must provide a reason; it is optional for organization API-key callers. Tenant mismatches return a non-disclosing 404 before the request body is validated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.enrollments.reissue(
  enrollment_id: "enrl_AAAAAAAAAAAAAAAAAAAAAQ",
  reason: "Member needs a new election after a qualifying event.",
  ticket_number: "BPT-1234",
  qualifying_life_event_id: "qle_AAAAAAAAAAAAAAAAAAAAAQ"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**enrollment_id:** `String` — Unique enrollment identifier (enrl_*)
    
</dd>
</dl>

<dl>
<dd>

**reason:** `String` — Audit reason for the reissue; required for user-backed callers and optional for long-lived organization API-key callers
    
</dd>
</dl>

<dl>
<dd>

**ticket_number:** `String` — Optional support or operational ticket number
    
</dd>
</dl>

<dl>
<dd>

**qualifying_life_event_id:** `String` — Accepted member qualifying life event identifier (qle_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Enrollments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.enrollments.<a href="/lib/VitableConnect/enrollments/client.rb">terminate</a>(enrollment_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Terminates enrolled coverage immediately. An accepted qualifying life event owned by the enrollment member is required unless the plan is VPC or ICHRA. User-backed callers must provide a reason; it is optional for organization API-key callers. API keys may act across the caller organization's book. Tenant mismatches return the same non-disclosing 404 before the request body is validated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.enrollments.terminate(
  enrollment_id: "enrl_AAAAAAAAAAAAAAAAAAAAAQ",
  reason: "Member requested coverage termination after a qualifying event.",
  ticket_number: "BPT-1234",
  qualifying_life_event_id: "qle_AAAAAAAAAAAAAAAAAAAAAQ"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**enrollment_id:** `String` — Unique enrollment identifier (enrl_*)
    
</dd>
</dl>

<dl>
<dd>

**reason:** `String` — Audit reason for the termination; required for user-backed callers and optional for long-lived organization API-key callers
    
</dd>
</dl>

<dl>
<dd>

**ticket_number:** `String` — Optional support or operational ticket number
    
</dd>
</dl>

<dl>
<dd>

**qualifying_life_event_id:** `String` — Accepted member qualifying life event identifier (qle_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Enrollments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Groups
<details><summary><code>client.groups.<a href="/lib/VitableConnect/groups/client.rb">list</a>() -> VitableConnect::Types::GroupListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of groups belonging to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.groups.list(
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Groups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.groups.<a href="/lib/VitableConnect/groups/client.rb">create</a>(request) -> VitableConnect::Types::GroupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new group scoped to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.groups.create(
  name: "Tier 1",
  external_reference_id: "mol_seg_001"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Display name for the group.
    
</dd>
</dl>

<dl>
<dd>

**external_reference_id:** `String` — Your own identifier for this group. Use it to correlate the group with a record in your system; it must be unique within your organization.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Groups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.groups.<a href="/lib/VitableConnect/groups/client.rb">get</a>(group_id:) -> VitableConnect::Types::GroupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single group by its prefixed ID. Returns 404 if the group does not belong to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.groups.get(group_id: "grp_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**group_id:** `String` — Unique group identifier (grp_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Groups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.groups.<a href="/lib/VitableConnect/groups/client.rb">update</a>(group_id:, request) -> VitableConnect::Types::GroupResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Partially updates a group's name or external reference ID. Returns 404 if the group does not belong to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.groups.update(
  group_id: "grp_abc123def456",
  name: "Tier 1 (renamed)",
  external_reference_id: "mol_seg_001_v2"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**group_id:** `String` — Unique group identifier (grp_*)
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — New display name for the group. Omit to leave unchanged.
    
</dd>
</dl>

<dl>
<dd>

**external_reference_id:** `String` — New external reference ID for the group. Omit to leave unchanged.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Groups::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Members
<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">get</a>(member_id:) -> VitableConnect::Types::MemberResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a member's profile by ID — identity, demographics, address, contact details, tobacco status, and profile status. Access is scoped to the authenticated principal; a member not visible to the caller returns a 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.get(member_id: "mbr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` — Unique member identifier (mbr_*)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">list_dependents</a>(member_id:) -> VitableConnect::Types::MemberDependentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a member's active legal dependents — name, relationship, date of birth, age, and sex at birth. Access is scoped to the authenticated principal; a member not visible to the caller returns a 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list_dependents(member_id: "mbr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">list_employments</a>(member_id:) -> VitableConnect::Types::MemberEmploymentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a member's employment across every employer — the same employee record shape as the employer's employees list, plus the employer name. For an organization caller the rows are scoped to companies in that organization's book; a member (self/household) or Vitable Admin sees all employments. A member not visible to the caller returns a 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list_employments(member_id: "mbr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">list_enrollments</a>(member_id:) -> VitableConnect::Types::MemberEnrollmentsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a member's benefit enrollments across every employer — benefit type and product, employer, carrier, plan, tier, employee deduction, employer contribution and total premium, the individual enrollment coverage boundary (`coverage_end`), the separate pre-effective cancellation boundary (`cancelled_date`), and the distinct benefit plan-year boundary (`plan_year_coverage_end`) used to determine whether the plan year itself has ended, the date the enrollment record was created (`issued_date`, the value Ops labels Issued on, reported for every row whatever the member answered), the window the member could answer in -- which never opens before the enrollment was issued, so a row issued mid-open-enrollment starts its window on its issue date -- whether a qualifying life event would currently be required for reissue under the product/open-enrollment rule, enrollment/open-enrollment window, and two statuses: `election_status` (what the member answered) and `policy_status` (what became of their coverage, null unless they enrolled). Every row includes a stable enrollment ID and the exact employer and benefit plan-year IDs used to fetch that row's plan-year detail. The full list is returned across all states so the client derives active plans (effective and upcoming) and the enrollment history from those per-row statuses. For an organization caller the rows are scoped to companies in that organization's book; a member (self/household) or Vitable Admin sees all enrollments. A member not visible to the caller returns a 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list_enrollments(member_id: "mbr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">get_household</a>(member_id:) -> VitableConnect::Types::HouseholdMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a member's household as a per-participant table — the account holder plus each active household member, with name, relationship, member type, date of birth, and household-admin flag. Access is scoped to the authenticated principal; a member not visible to the caller (or with no household) returns a 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.get_household(member_id: "mbr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">list_id_cards</a>(member_id:) -> VitableConnect::Types::MemberDigitalBenefitCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a member's benefit ID cards — card type (medical, dental, vision, or rx), employer, plan, provider network, claims payer, carrier contact details, and the disclaimers printed on the card. Medical, dental and vision cards come from the member's active digital benefit cards; the rx card from the member's Ventegra pharmacy benefit (omitted when the member has no free-medication coverage), which carries no plan, network, or carrier details. Access is scoped to the authenticated principal, and an organization caller sees only cards from employers in its book; a member not visible to the caller returns a 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list_id_cards(member_id: "mbr_abc123def456")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">list_qualifying_life_events</a>(member_id:) -> VitableConnect::Types::MemberQualifyingLifeEventListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists a member's qualifying life events, including events already used for another enrollment. Returns all statuses by default; pass the status query param to filter to one (e.g. approved). Events are ordered newest submission first with stable paging. Custom text is present only when submitted and is otherwise null. A member not visible to the caller returns a 404. API keys and unbound access tokens have organization-wide access. Employer-bound tokens require employment at the bound employer, and employee-bound tokens require the exact employee-member relationship. Organization or scope mismatches return a 404 before pagination is validated.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list_qualifying_life_events(
  member_id: "mbr_abc123def456",
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**member_id:** `String` — Unique member identifier (mbr_*)
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**status:** `VitableConnect::Types::Status` — Optional. Filter to a single QLE status; omit to return all statuses.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.members.<a href="/lib/VitableConnect/members/client.rb">list</a>() -> VitableConnect::Types::MemberListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a paginated list of the members in the authenticated organization's book — identity, contact details, and address. The book covers members reached through an employer in the organization's book as well as members of a group it owns. Supports free-text search (name, email, phone number, or exact member id).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.members.list(
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Case-insensitive search across member name, email, and phone number; exact match on member id (prefixed or raw uuid)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Members::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Organizations
<details><summary><code>client.organizations.<a href="/lib/VitableConnect/organizations/client.rb">list</a>() -> VitableConnect::Types::OrganizationsListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Lists the organizations the authenticated caller is an active member of (paginated). Returns an empty list when the caller belongs to no organizations.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organizations.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `VitableConnect::Organizations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.organizations.<a href="/lib/VitableConnect/organizations/client.rb">create</a>(request) -> VitableConnect::Types::Organization</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Onboards the authenticated user's partner Organization: creates the local Organization + the creator's admin membership atomically, then mirrors it to WorkOS (creates the WorkOS org and binds the creator as admin). 409 `organization_already_exists` when the user already has an organization (v0: one organization per user).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.organizations.create(
  name: "Acme Brokerage",
  type: "BROKERAGE"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Legal or trading name of the organization.
    
</dd>
</dl>

<dl>
<dd>

**type:** `VitableConnect::Types::CreateOrganizationRequestType` — Category of organization being onboarded.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Organizations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Plans
<details><summary><code>client.plans.<a href="/lib/VitableConnect/plans/client.rb">list</a>() -> VitableConnect::Types::PlanListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of benefit plans linked to the authenticated organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.plans.list(
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**limit:** `Integer` — Items per page (default: 20, max: 100)
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (default: 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Plans::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Webhook Events
<details><summary><code>client.webhook_events.<a href="/lib/VitableConnect/webhook_events/client.rb">list</a>() -> VitableConnect::Types::WebhookEventListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a paginated list of webhook events for the authenticated organization. Supports filtering by event name, resource type, resource ID, and date range.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhook_events.list(
  limit: 20,
  page: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**created_after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**event_name:** `VitableConnect::Types::EventName` 

* `enrollment.accepted` - Enrollment Accepted
* `enrollment.terminated` - Enrollment Terminated
* `enrollment.termination_rescheduled` - Enrollment Termination Rescheduled
* `enrollment.elected` - Enrollment Elected
* `enrollment.granted` - Enrollment Granted
* `enrollment.waived` - Enrollment Waived
* `enrollment.started` - Enrollment Started
* `employee.eligibility_granted` - Employee Eligibility Granted
* `employee.eligibility_terminated` - Employee Eligibility Terminated
* `employee.deactivated` - Employee Deactivated
* `employee.deduction_created` - Employee Deduction Created
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**resource_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**resource_type:** `VitableConnect::Types::ResourceType` 

* `enrollment` - Enrollment
* `employee` - Employee
* `employer` - Employer
* `dependent` - Dependent
* `plan_year` - Plan Year
* `payroll_deduction` - Payroll Deduction
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::WebhookEvents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhook_events.<a href="/lib/VitableConnect/webhook_events/client.rb">get</a>(event_id:) -> VitableConnect::Types::WebhookEventResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a single webhook event by its prefixed ID. Returns 404 if the event does not exist or belongs to a different organization.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhook_events.get(event_id: "event_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**event_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::WebhookEvents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.webhook_events.<a href="/lib/VitableConnect/webhook_events/client.rb">list_deliveries</a>(event_id:) -> VitableConnect::Types::ListWebhookEventDeliveriesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves all delivery attempts for a webhook event. Returns up to 100 deliveries. Each delivery includes a computed status field (Pending, In Progress, Delivered, or Failed).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.webhook_events.list_deliveries(event_id: "event_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**event_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::WebhookEvents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Groups Members Sync
<details><summary><code>client.groups.members.sync.<a href="/lib/VitableConnect/groups/members/sync/client.rb">submit</a>(group_id:, request) -> VitableConnect::Types::GroupMemberSyncDetailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Submits a member sync payload for the specified group. Members in the payload will be queued for processing asynchronously. Returns HTTP 202 with the batch ID and acceptance timestamp.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.groups.members.sync.submit(
  group_id: "grp_abc123def456",
  members: [{
    reference_id: "EMP-001",
    first_name: "Jane",
    last_name: "Doe",
    date_of_birth: "1990-05-15",
    phone: "4155550100",
    plan_id: "pln_abc123def456",
    address: {
      address_line1: "123 Main Street",
      address_line2: "Apt 4B",
      city: "San Francisco",
      state: "CA",
      zipcode: "94102"
    },
    email: "jane.doe@acme.com"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**group_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**members:** `Internal::Types::Array[VitableConnect::Types::GroupMemberSyncMemberRequest]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Groups::Members::Sync::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.groups.members.sync.<a href="/lib/VitableConnect/groups/members/sync/client.rb">get</a>(group_id:, request_id:) -> VitableConnect::Types::GroupMemberSyncRequestDetailResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieves a previously-submitted group member sync request by its `grpmsr_` ID. Returns the acceptance timestamp, completion timestamp (if processing has finished), and the per-member `results` once available. While processing is in flight, `completed_at` and `results` are `null`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.groups.members.sync.get(
  group_id: "grp_abc123def456",
  request_id: "request_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**group_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `VitableConnect::Groups::Members::Sync::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

