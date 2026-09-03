# frozen_string_literal: true

module VitableConnect
  module Types
    # One payroll-deduction statement row.
    #
    # Reads a :class:`PayrollDeductionStatementDTO` by attribute: the ``statement_id`` character field renders the
    # prefixed id via ``str()``, and the date/datetime fields emit ISO-8601 strings.
    class PayrollDeductionStatement < Internal::Types::Model
      field :statement_id, -> { String }, optional: false, nullable: false

      field :period_start, -> { String }, optional: false, nullable: false

      field :period_end, -> { String }, optional: false, nullable: false

      field :run_date, -> { String }, optional: false, nullable: false

      field :employee_count, -> { Integer }, optional: false, nullable: false

      field :total_deduction_cents, -> { Integer }, optional: false, nullable: false

      field :csv_file_url, -> { String }, optional: false, nullable: true

      field :deduction_frequency, -> { VitableConnect::Types::DeductionFrequency }, optional: false, nullable: false

      field :deduction_frequency_label, -> { String }, optional: false, nullable: false
    end
  end
end
