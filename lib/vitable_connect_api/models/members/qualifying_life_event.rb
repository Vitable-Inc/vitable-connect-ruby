# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      class QualifyingLifeEvent < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Unique QLE identifier with 'qle\_' prefix
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Timestamp when the QLE was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute employee_id
        #   ID of the employee (empl\_\*)
        #
        #   @return [String]
        required :employee_id, String

        # @!attribute enrollment_window_end
        #   End of the special enrollment period (typically 30-60 days from event)
        #
        #   @return [Time]
        required :enrollment_window_end, Time

        # @!attribute enrollment_window_start
        #   Start of the special enrollment period
        #
        #   @return [Time]
        required :enrollment_window_start, Time

        # @!attribute event_date
        #   Date when the qualifying life event occurred
        #
        #   @return [Date]
        required :event_date, Date

        # @!attribute event_type
        #   Type of qualifying life event (e.g., 'marriage', 'birth', 'adoption',
        #   'loss_of_coverage', 'divorce')
        #
        #   @return [String]
        required :event_type, String

        # @!attribute member_id
        #   ID of the member experiencing the life event (mbr\_\*)
        #
        #   @return [String]
        required :member_id, String

        # @!attribute status
        #   - `pending` - Pending
        #   - `approved` - Approved
        #   - `denied` - Denied
        #
        #   @return [Symbol, VitableConnectAPI::Models::Members::QualifyingLifeEventStatus]
        required :status, enum: -> { VitableConnectAPI::Members::QualifyingLifeEventStatus }

        # @!attribute updated_at
        #   Timestamp when the QLE was last updated
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute notes
        #   Additional notes or comments about the QLE
        #
        #   @return [String, nil]
        optional :notes, String, nil?: true

        # @!attribute reviewed_at
        #   Timestamp when the QLE was reviewed, if reviewed
        #
        #   @return [Time, nil]
        optional :reviewed_at, Time, nil?: true

        # @!attribute reviewed_by
        #   ID of the user who reviewed the QLE, if reviewed
        #
        #   @return [String, nil]
        optional :reviewed_by, String, nil?: true

        # @!method initialize(id:, created_at:, employee_id:, enrollment_window_end:, enrollment_window_start:, event_date:, event_type:, member_id:, status:, updated_at:, notes: nil, reviewed_at: nil, reviewed_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Members::QualifyingLifeEvent} for more details.
        #
        #   Serializer for Qualifying Life Event entity in public API responses.
        #
        #   QLEs are significant life changes (marriage, birth, adoption, loss of coverage)
        #   that allow employees to modify benefit elections outside of open enrollment.
        #
        #   @param id [String] Unique QLE identifier with 'qle\_' prefix
        #
        #   @param created_at [Time] Timestamp when the QLE was created
        #
        #   @param employee_id [String] ID of the employee (empl\_\*)
        #
        #   @param enrollment_window_end [Time] End of the special enrollment period (typically 30-60 days from event)
        #
        #   @param enrollment_window_start [Time] Start of the special enrollment period
        #
        #   @param event_date [Date] Date when the qualifying life event occurred
        #
        #   @param event_type [String] Type of qualifying life event (e.g., 'marriage', 'birth', 'adoption', 'loss_of_c
        #
        #   @param member_id [String] ID of the member experiencing the life event (mbr\_\*)
        #
        #   @param status [Symbol, VitableConnectAPI::Models::Members::QualifyingLifeEventStatus] - `pending` - Pending
        #
        #   @param updated_at [Time] Timestamp when the QLE was last updated
        #
        #   @param notes [String, nil] Additional notes or comments about the QLE
        #
        #   @param reviewed_at [Time, nil] Timestamp when the QLE was reviewed, if reviewed
        #
        #   @param reviewed_by [String, nil] ID of the user who reviewed the QLE, if reviewed
      end
    end
  end
end
