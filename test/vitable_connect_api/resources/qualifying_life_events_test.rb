# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::QualifyingLifeEventsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.qualifying_life_events.retrieve("qle_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Members::QualifyingLifeEvent
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        employee_id: String,
        enrollment_window_end: Date,
        enrollment_window_start: Date,
        event_date: Date,
        event_type: String,
        member_id: String,
        status: VitableConnectAPI::Members::QualifyingLifeEventStatus,
        updated_at: Time,
        notes: String | nil,
        reviewed_at: Time | nil,
        reviewed_by: String | nil
      }
    end
  end
end
