# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::WebhookEventsTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.webhook_events.retrieve("event_id")

    assert_pattern do
      response => VitableConnect::Models::WebhookEventRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::WebhookEvent
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.webhook_events.list

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::WebhookEvent
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        event_name: String,
        organization_id: String,
        resource_id: String,
        resource_type: String
      }
    end
  end

  def test_list_deliveries
    skip("Mock server tests are disabled")

    response = @vitable_connect.webhook_events.list_deliveries("event_id")

    assert_pattern do
      response => VitableConnect::Models::WebhookEventListDeliveriesResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::WebhookEventListDeliveriesResponse::Data])
      }
    end
  end
end
