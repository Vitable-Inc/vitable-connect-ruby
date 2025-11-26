# frozen_string_literal: true

require_relative "../../test_helper"

class VitablePartnerAPI::Test::Resources::Employees::QualifyingLifeEventsTest < VitablePartnerAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employees.qualifying_life_events.create(
        "empl__1k--w2KifJ1",
        event_date: "2019-12-27",
        event_type: :MARRIAGE
      )

    assert_pattern do
      response => VitablePartnerAPI::QualifyingLifeEvent
    end

    assert_pattern do
      response => {
        id: String,
        event_date: Date,
        event_type: VitablePartnerAPI::QualifyingLifeEvent::EventType,
        member_id: String,
        status: VitablePartnerAPI::QualifyingLifeEvent::Status,
        description: String | nil,
        proof_document_url: String | nil,
        review_notes: String | nil,
        reviewed_at: Time | nil,
        reviewed_by_user_id: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.qualifying_life_events.list("empl__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Models::Employees::QualifyingLifeEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::QualifyingLifeEvent]) | nil
      }
    end
  end
end
