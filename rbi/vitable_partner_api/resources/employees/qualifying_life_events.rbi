# typed: strong

module VitablePartnerAPI
  module Resources
    class Employees
      class QualifyingLifeEvents
        # Creates a new Qualifying Life Event for an Employee.
        sig do
          params(
            id: String,
            event_date: Date,
            event_type:
              VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::OrSymbol,
            description: String,
            proof_document_url: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(VitablePartnerAPI::QualifyingLifeEvent)
        end
        def create(
          # Employee ID (prefixed with empl\_)
          id,
          event_date:,
          event_type:,
          description: nil,
          proof_document_url: nil,
          request_options: {}
        )
        end

        # Gets all Qualifying Life Events for an Employee.
        sig do
          params(
            id: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(
            VitablePartnerAPI::Models::Employees::QualifyingLifeEventListResponse
          )
        end
        def list(
          # Employee ID (prefixed with empl\_)
          id,
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
