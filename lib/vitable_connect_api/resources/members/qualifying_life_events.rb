# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Members
      class QualifyingLifeEvents
        # Retrieves a paginated list of qualifying life events for a member. QLEs are
        # significant life changes (marriage, birth, adoption, loss of coverage) that
        # allow benefit enrollment changes outside open enrollment.
        #
        # @overload list(member_id, event_type: nil, limit: nil, page: nil, status: nil, request_options: {})
        #
        # @param member_id [String] Unique member identifier (mbr\_\*)
        #
        # @param event_type [Symbol, VitableConnectAPI::Models::Members::EventType] Filter by QLE type
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param status [Symbol, VitableConnectAPI::Models::Members::QualifyingLifeEventStatus] Filter by QLE status
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse]
        #
        # @see VitableConnectAPI::Models::Members::QualifyingLifeEventListParams
        def list(member_id, params = {})
          parsed, options = VitableConnectAPI::Members::QualifyingLifeEventListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/members/%1$s/qualifying-life-events", member_id],
            query: parsed,
            model: VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {VitableConnectAPI::Models::Members::QualifyingLifeEventRecordParams} for more
        # details.
        #
        # Records a qualifying life event occurrence for a member. Opens a special
        # enrollment period allowing benefit changes outside open enrollment. Employees
        # typically have 30-60 days from the event date to complete enrollment changes.
        #
        # @overload record(member_id, event_date:, event_type:, notes: nil, request_options: {})
        #
        # @param member_id [String] Unique member identifier (mbr\_\*)
        #
        # @param event_date [Date] Date when the event occurred
        #
        # @param event_type [Symbol, VitableConnectAPI::Models::Members::EventType] - `Marriage` - Marriage
        #
        # @param notes [String, nil] Optional notes about the event
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnectAPI::Models::Members::QualifyingLifeEventRecordResponse]
        #
        # @see VitableConnectAPI::Models::Members::QualifyingLifeEventRecordParams
        def record(member_id, params)
          parsed, options = VitableConnectAPI::Members::QualifyingLifeEventRecordParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/members/%1$s/qualifying-life-events", member_id],
            body: parsed,
            model: VitableConnectAPI::Models::Members::QualifyingLifeEventRecordResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [VitableConnectAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
