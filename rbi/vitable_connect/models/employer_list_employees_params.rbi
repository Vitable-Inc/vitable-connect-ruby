# typed: strong

module VitableConnect
  module Models
    class EmployerListEmployeesParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerListEmployeesParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # Filter by employment status (active or terminated)
      sig do
        returns(
          T.nilable(
            VitableConnect::EmployerListEmployeesParams::EmploymentStatus::OrSymbol
          )
        )
      end
      attr_reader :employment_status

      sig do
        params(
          employment_status:
            VitableConnect::EmployerListEmployeesParams::EmploymentStatus::OrSymbol
        ).void
      end
      attr_writer :employment_status

      # Items per page (default: 20, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Page number (default: 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Case-insensitive search across employee first name, last name, and email
      sig { returns(T.nilable(String)) }
      attr_accessor :search

      sig do
        params(
          employer_id: String,
          employment_status:
            VitableConnect::EmployerListEmployeesParams::EmploymentStatus::OrSymbol,
          limit: Integer,
          page: Integer,
          search: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # Filter by employment status (active or terminated)
        employment_status: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Case-insensitive search across employee first name, last name, and email
        search: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            employment_status:
              VitableConnect::EmployerListEmployeesParams::EmploymentStatus::OrSymbol,
            limit: Integer,
            page: Integer,
            search: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by employment status (active or terminated)
      module EmploymentStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerListEmployeesParams::EmploymentStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            VitableConnect::EmployerListEmployeesParams::EmploymentStatus::TaggedSymbol
          )
        TERMINATED =
          T.let(
            :terminated,
            VitableConnect::EmployerListEmployeesParams::EmploymentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerListEmployeesParams::EmploymentStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
