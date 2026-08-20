# typed: strong

module VitableConnect
  module Models
    class EmployerListPayrollDeductionStatementsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Download link for the change CSV, or null.
      sig { returns(T.nilable(String)) }
      attr_accessor :csv_file_url

      # - `weekly` - Weekly
      # - `bi_weekly` - Bi Weekly
      # - `semi_monthly` - Semi Monthly
      # - `monthly` - Monthly
      sig do
        returns(
          VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol
        )
      end
      attr_accessor :deduction_frequency

      # Human-readable deduction frequency (e.g. `Monthly`).
      sig { returns(String) }
      attr_accessor :deduction_frequency_label

      # Distinct employees covered by the statement's entries.
      sig { returns(Integer) }
      attr_accessor :employee_count

      # Deduction period end date.
      sig { returns(Date) }
      attr_accessor :period_end

      # Deduction period start date.
      sig { returns(Date) }
      attr_accessor :period_start

      # When the statement was generated.
      sig { returns(Time) }
      attr_accessor :run_date

      # Prefixed payroll-deduction-statement identifier (`pstmt_<base64-encoded-uuid>`).
      sig { returns(String) }
      attr_accessor :statement_id

      # Total payroll deduction for the period, in cents.
      sig { returns(Integer) }
      attr_accessor :total_deduction_cents

      # One payroll-deduction statement row.
      #
      # Reads a :class:`PayrollDeductionStatementDTO` by attribute: the `statement_id`
      # character field renders the prefixed id via `str()`, and the date/datetime
      # fields emit ISO-8601 strings.
      sig do
        params(
          csv_file_url: T.nilable(String),
          deduction_frequency:
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::OrSymbol,
          deduction_frequency_label: String,
          employee_count: Integer,
          period_end: Date,
          period_start: Date,
          run_date: Time,
          statement_id: String,
          total_deduction_cents: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Download link for the change CSV, or null.
        csv_file_url:,
        # - `weekly` - Weekly
        # - `bi_weekly` - Bi Weekly
        # - `semi_monthly` - Semi Monthly
        # - `monthly` - Monthly
        deduction_frequency:,
        # Human-readable deduction frequency (e.g. `Monthly`).
        deduction_frequency_label:,
        # Distinct employees covered by the statement's entries.
        employee_count:,
        # Deduction period end date.
        period_end:,
        # Deduction period start date.
        period_start:,
        # When the statement was generated.
        run_date:,
        # Prefixed payroll-deduction-statement identifier (`pstmt_<base64-encoded-uuid>`).
        statement_id:,
        # Total payroll deduction for the period, in cents.
        total_deduction_cents:
      )
      end

      sig do
        override.returns(
          {
            csv_file_url: T.nilable(String),
            deduction_frequency:
              VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol,
            deduction_frequency_label: String,
            employee_count: Integer,
            period_end: Date,
            period_start: Date,
            run_date: Time,
            statement_id: String,
            total_deduction_cents: Integer
          }
        )
      end
      def to_hash
      end

      # - `weekly` - Weekly
      # - `bi_weekly` - Bi Weekly
      # - `semi_monthly` - Semi Monthly
      # - `monthly` - Monthly
      module DeductionFrequency
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEEKLY =
          T.let(
            :weekly,
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol
          )
        BI_WEEKLY =
          T.let(
            :bi_weekly,
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol
          )
        SEMI_MONTHLY =
          T.let(
            :semi_monthly,
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
