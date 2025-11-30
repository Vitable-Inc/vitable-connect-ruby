# typed: strong

module VitableConnectAPI
  module Resources
    class Members
      class QualifyingLifeEvents
        # Retrieves a paginated list of qualifying life events for a member. QLEs are
        # significant life changes (marriage, birth, adoption, loss of coverage) that
        # allow benefit enrollment changes outside open enrollment.
        sig do
          params(
            member_id: String,
            event_type: VitableConnectAPI::Members::EventType::OrSymbol,
            limit: Integer,
            page: Integer,
            status:
              VitableConnectAPI::Members::QualifyingLifeEventStatus::OrSymbol,
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T::Array[VitableConnectAPI::Members::QualifyingLifeEvent])
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
            event_type: VitableConnectAPI::Members::EventType::OrSymbol,
            notes: T.nilable(String),
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(VitableConnectAPI::Members::QualifyingLifeEvent)
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
        sig do
          params(client: VitableConnectAPI::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
