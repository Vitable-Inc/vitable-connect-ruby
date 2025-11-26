# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Employees
      class QualifyingLifeEvents
        # Creates a new Qualifying Life Event for an Employee.
        #
        # @overload create(id, event_date:, event_type:, description: nil, proof_document_url: nil, request_options: {})
        #
        # @param id [String] Employee ID (prefixed with empl\_)
        #
        # @param event_date [Date]
        #
        # @param event_type [Symbol, VitablePartnerAPI::Models::CreateQualifyingLifeEventRequest::EventType]
        #
        # @param description [String]
        #
        # @param proof_document_url [String]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::QualifyingLifeEvent]
        #
        # @see VitablePartnerAPI::Models::Employees::QualifyingLifeEventCreateParams
        def create(id, params)
          parsed, options = VitablePartnerAPI::Employees::QualifyingLifeEventCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["employees/%1$s/qualifying-life-events", id],
            body: parsed,
            model: VitablePartnerAPI::QualifyingLifeEvent,
            options: options
          )
        end

        # Gets all Qualifying Life Events for an Employee.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] Employee ID (prefixed with empl\_)
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Employees::QualifyingLifeEventListResponse]
        #
        # @see VitablePartnerAPI::Models::Employees::QualifyingLifeEventListParams
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["employees/%1$s/qualifying-life-events", id],
            model: VitablePartnerAPI::Models::Employees::QualifyingLifeEventListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [VitablePartnerAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
