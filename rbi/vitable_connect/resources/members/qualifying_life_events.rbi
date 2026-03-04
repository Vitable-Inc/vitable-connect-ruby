# typed: strong

module VitableConnect
  module Resources
    class Members
      # Record life events that trigger special enrollment periods
      class QualifyingLifeEvents
        # Retrieves detailed information for a specific QLE by ID. Returns event type,
        # date, status, and enrollment window information.
        sig do
          params(
            qle_id: String,
            member_id: String,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Members::QualifyingLifeEventResponse)
        end
        def retrieve(
          # Unique qualifying life event identifier (qle\_\*)
          qle_id,
          # Unique member identifier (mbr\_\*)
          member_id:,
          request_options: {}
        )
        end

        # Retrieves a paginated list of qualifying life events for a member. QLEs are
        # significant life changes (marriage, birth, adoption, loss of coverage) that
        # allow benefit enrollment changes outside open enrollment.
        sig do
          params(
            member_id: String,
            event_type: VitableConnect::Members::EventType::OrSymbol,
            limit: Integer,
            page: Integer,
            status:
              VitableConnect::Members::QualifyingLifeEventStatus::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(
            VitableConnect::Models::Members::QualifyingLifeEventListResponse
          )
        end
        def list(
          # Unique member identifier (mbr\_\*)
          member_id,
          # Filter by QLE type
          event_type: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by QLE status
          status: nil,
          request_options: {}
        )
        end

        # Records a qualifying life event occurrence for a member. Opens a special
        # enrollment period allowing benefit changes outside open enrollment. Employees
        # typically have 30-60 days from the event date to complete enrollment changes.
        sig do
          params(
            member_id: String,
            event_date: Date,
            event_type: VitableConnect::Members::EventType::OrSymbol,
            notes: T.nilable(String),
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Members::QualifyingLifeEventResponse)
        end
        def record(
          # Unique member identifier (mbr\_\*)
          member_id,
          # Date when the event occurred
          event_date:,
          # - `Marriage` - Marriage
          # - `Birth` - Birth
          # - `Adoption` - Adoption
          # - `Divorce` - Divorce
          # - `Death` - Death
          # - `Job Loss` - Job Loss
          # - `Reduction In Hours` - Reduction In Hours
          # - `Employer Bankruptcy` - Employer Bankruptcy
          # - `Medicare Entitlement` - Medicare Entitlement
          # - `Termination` - Termination
          # - `Other` - Other
          event_type:,
          # Optional notes about the event
          notes: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: VitableConnect::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
