# frozen_string_literal: true

require_relative "../../../test_helper"

class VitableConnect::Test::Resources::Groups::Members::SyncTest < VitableConnect::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.groups.members.sync.retrieve("request_id", group_id: "grp_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::Groups::Members::SyncRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data
      }
    end
  end

  def test_submit_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.groups.members.sync.submit(
        "grp_abc123def456",
        members: [
          {
            address: {address_line_1: "x", city: "x", state: "xx", zipcode: "x"},
            date_of_birth: "2019-12-27",
            first_name: "first_name",
            last_name: "last_name",
            phone: "phone",
            plan_id: "x",
            reference_id: "x"
          }
        ]
      )

    assert_pattern do
      response => VitableConnect::Models::Groups::Members::SyncSubmitResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data
      }
    end
  end
end
