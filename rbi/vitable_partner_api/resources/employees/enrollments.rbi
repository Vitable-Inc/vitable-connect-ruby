# typed: strong

module VitablePartnerAPI
  module Resources
    class Employees
      class Enrollments
        # Gets the Enrollments (pending, enrolled, or inactive) for a specific Employee
        # with additional filters.
        sig do
          params(
            id: String,
            status:
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::OrSymbol,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(
            VitablePartnerAPI::Models::Employees::EnrollmentListResponse
          )
        end
        def list(
          # Employee ID (prefixed with empl\_)
          id,
          status: nil,
          request_options: {}
        )
        end

        # Benefits election process of all pending enrollments. Consists of all pending
        # enrollments, whether enrolled/waived, and IDs of the dependents.
        sig do
          params(
            id: String,
            elections:
              T::Array[
                VitablePartnerAPI::ElectBenefitsRequest::Election::OrHash
              ],
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(
            VitablePartnerAPI::Models::Employees::EnrollmentElectResponse
          )
        end
        def elect(
          # Employee ID (prefixed with empl\_)
          id,
          elections:,
          request_options: {}
        )
        end

        # @api private
        sig do
          params(client: VitablePartnerAPI::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
