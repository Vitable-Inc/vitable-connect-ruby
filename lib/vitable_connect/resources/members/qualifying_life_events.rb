# frozen_string_literal: true

module VitableConnect
  module Resources
    class Members
      class QualifyingLifeEvents
        # Retrieves detailed information for a specific QLE by ID. Returns event type,
        # date, status, and enrollment window information.
        #
        # @overload retrieve(qle_id, member_id:, request_options: {})
        #
        # @param qle_id [String] Unique qualifying life event identifier (qle\_\*)
        #
        # @param member_id [String] Unique member identifier (mbr\_\*)
        #
        # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnect::Models::Members::QualifyingLifeEventResponse]
        #
        # @see VitableConnect::Models::Members::QualifyingLifeEventRetrieveParams
        def retrieve(qle_id, params)
          parsed, options = VitableConnect::Members::QualifyingLifeEventRetrieveParams.dump_request(params)
          member_id =
            parsed.delete(:member_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["v1/members/%1$s/qualifying-life-events/%2$s", member_id, qle_id],
            model: VitableConnect::Members::QualifyingLifeEventResponse,
            options: options
          )
        end

        # Retrieves a paginated list of qualifying life events for a member. QLEs are
        # significant life changes (marriage, birth, adoption, loss of coverage) that
        # allow benefit enrollment changes outside open enrollment.
        #
        # @overload list(member_id, event_type: nil, limit: nil, page: nil, status: nil, request_options: {})
        #
        # @param member_id [String] Unique member identifier (mbr\_\*)
        #
        # @param event_type [Symbol, VitableConnect::Models::Members::EventType] Filter by QLE type
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param status [Symbol, VitableConnect::Models::Members::QualifyingLifeEventStatus] Filter by QLE status
        #
        # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnect::Models::Members::QualifyingLifeEventListResponse]
        #
        # @see VitableConnect::Models::Members::QualifyingLifeEventListParams
        def list(member_id, params = {})
          parsed, options = VitableConnect::Members::QualifyingLifeEventListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/members/%1$s/qualifying-life-events", member_id],
            query: parsed,
            model: VitableConnect::Models::Members::QualifyingLifeEventListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {VitableConnect::Models::Members::QualifyingLifeEventRecordParams} for more
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
        # @param event_type [Symbol, VitableConnect::Models::Members::EventType] - `Marriage` - Marriage
        #
        # @param notes [String, nil] Optional notes about the event
        #
        # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnect::Models::Members::QualifyingLifeEventResponse]
        #
        # @see VitableConnect::Models::Members::QualifyingLifeEventRecordParams
        def record(member_id, params)
          parsed, options = VitableConnect::Members::QualifyingLifeEventRecordParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/members/%1$s/qualifying-life-events", member_id],
            body: parsed,
            model: VitableConnect::Members::QualifyingLifeEventResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [VitableConnect::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
