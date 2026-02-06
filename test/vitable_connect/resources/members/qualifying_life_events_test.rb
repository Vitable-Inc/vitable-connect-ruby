# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnect::Test::Resources::Members::QualifyingLifeEventsTest < VitableConnect::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect.members.qualifying_life_events.retrieve(
        "qle_abc123def456",
        member_id: "mbr_abc123def456"
      )

    assert_pattern do
      response => VitableConnect::Members::QualifyingLifeEventResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Members::QualifyingLifeEvent
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect.members.qualifying_life_events.list("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::Members::QualifyingLifeEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Members::QualifyingLifeEvent]),
        pagination: VitableConnect::Pagination
      }
    end
  end

  def test_record_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect.members.qualifying_life_events.record(
        "mbr_abc123def456",
        event_date: "2024-11-15",
        event_type: :Marriage
      )

    assert_pattern do
      response => VitableConnect::Members::QualifyingLifeEventResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Members::QualifyingLifeEvent
      }
    end
  end
end
