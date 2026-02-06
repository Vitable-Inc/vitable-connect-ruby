# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Members::QualifyingLifeEventsTest < VitableConnectAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.members.qualifying_life_events.list("mbr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Members::QualifyingLifeEvent]),
        pagination: VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse::Pagination
      }
    end
  end

  def test_record_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.members.qualifying_life_events.record(
        "mbr_abc123def456",
        event_date: "2024-11-15",
        event_type: :Marriage
      )

    assert_pattern do
      response => VitableConnectAPI::Models::Members::QualifyingLifeEventRecordResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Members::QualifyingLifeEvent
      }
    end
  end
end
