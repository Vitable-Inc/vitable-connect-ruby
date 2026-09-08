# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_payroll_deduction_statements
    class EmployerListPayrollDeductionStatementsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute csv_file_url
      #   Download link for the change CSV, or null.
      #
      #   @return [String, nil]
      required :csv_file_url, String, nil?: true

      # @!attribute deduction_frequency
      #   - `weekly` - Weekly
      #   - `bi_weekly` - Bi Weekly
      #   - `semi_monthly` - Semi Monthly
      #   - `monthly` - Monthly
      #
      #   @return [Symbol, VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency]
      required :deduction_frequency,
               enum: -> { VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency }

      # @!attribute deduction_frequency_label
      #   Human-readable deduction frequency (e.g. `Monthly`).
      #
      #   @return [String]
      required :deduction_frequency_label, String

      # @!attribute employee_count
      #   Distinct employees covered by the statement's entries.
      #
      #   @return [Integer]
      required :employee_count, Integer

      # @!attribute period_end
      #   Deduction period end date.
      #
      #   @return [Date]
      required :period_end, Date

      # @!attribute period_start
      #   Deduction period start date.
      #
      #   @return [Date]
      required :period_start, Date

      # @!attribute run_date
      #   When the statement was generated.
      #
      #   @return [Time]
      required :run_date, Time

      # @!attribute statement_id
      #   Prefixed payroll-deduction-statement identifier (`pstmt_<base64-encoded-uuid>`).
      #
      #   @return [String]
      required :statement_id, String

      # @!attribute total_deduction_cents
      #   Total payroll deduction for the period, in cents.
      #
      #   @return [Integer]
      required :total_deduction_cents, Integer

      # @!method initialize(csv_file_url:, deduction_frequency:, deduction_frequency_label:, employee_count:, period_end:, period_start:, run_date:, statement_id:, total_deduction_cents:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse} for
      #   more details.
      #
      #   One payroll-deduction statement row.
      #
      #   Reads a :class:`PayrollDeductionStatementDTO` by attribute: the `statement_id`
      #   character field renders the prefixed id via `str()`, and the date/datetime
      #   fields emit ISO-8601 strings.
      #
      #   @param csv_file_url [String, nil] Download link for the change CSV, or null.
      #
      #   @param deduction_frequency [Symbol, VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency] - `weekly` - Weekly
      #
      #   @param deduction_frequency_label [String] Human-readable deduction frequency (e.g. `Monthly`).
      #
      #   @param employee_count [Integer] Distinct employees covered by the statement's entries.
      #
      #   @param period_end [Date] Deduction period end date.
      #
      #   @param period_start [Date] Deduction period start date.
      #
      #   @param run_date [Time] When the statement was generated.
      #
      #   @param statement_id [String] Prefixed payroll-deduction-statement identifier (`pstmt_<base64-encoded-uuid>`).
      #
      #   @param total_deduction_cents [Integer] Total payroll deduction for the period, in cents.

      # - `weekly` - Weekly
      # - `bi_weekly` - Bi Weekly
      # - `semi_monthly` - Semi Monthly
      # - `monthly` - Monthly
      #
      # @see VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse#deduction_frequency
      module DeductionFrequency
        extend VitableConnect::Internal::Type::Enum

        WEEKLY = :weekly
        BI_WEEKLY = :bi_weekly
        SEMI_MONTHLY = :semi_monthly
        MONTHLY = :monthly

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
