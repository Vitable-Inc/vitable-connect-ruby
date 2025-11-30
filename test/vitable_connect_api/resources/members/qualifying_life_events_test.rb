# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Members::QualifyingLifeEventsTest < VitableConnectAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.members.qualifying_life_events.list("mbr_abc123def456")

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Members::QualifyingLifeEvent])
    end
  end

  def test_record_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.members.qualifying_life_events.record(
        "mbr_abc123def456",
        event_date: "2019-12-27",
        event_type: :Marriage
      )

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
