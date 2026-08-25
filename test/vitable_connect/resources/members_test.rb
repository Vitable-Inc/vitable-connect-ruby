# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::MembersTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.retrieve("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::MemberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::MemberRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.list

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Models::MemberListResponse
    end

    assert_pattern do
      row => {
        id: String,
        first_name: String,
        last_name: String,
        address: VitableConnect::Models::MemberListResponse::Address | nil,
        email: String | nil,
        phone: String | nil
      }
    end
  end

  def test_list_dependents
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.list_dependents("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::MemberListDependentsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberListDependentsResponse::Data])
      }
    end
  end

  def test_list_employments
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.list_employments("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::MemberListEmploymentsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee])
      }
    end
  end

  def test_list_enrollments
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.list_enrollments("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::MemberListEnrollmentsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberListEnrollmentsResponse::Data])
      }
    end
  end

  def test_list_id_cards
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.list_id_cards("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::MemberListIDCardsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberListIDCardsResponse::Data])
      }
    end
  end

  def test_list_qualifying_life_events
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.list_qualifying_life_events("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Models::MemberListQualifyingLifeEventsResponse
    end

    assert_pattern do
      row => {
        id: String,
        event_type: VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType,
        other_event: String | nil,
        status: VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status,
        submitted_at: Time
      }
    end
  end

  def test_retrieve_household
    skip("Mock server tests are disabled")

    response = @vitable_connect.members.retrieve_household("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::MemberRetrieveHouseholdResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberRetrieveHouseholdResponse::Data])
      }
    end
  end
end
