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
            address: {
              address_line_1: "123 Main Street",
              city: "San Francisco",
              state: "CA",
              zipcode: "94102"
            },
            date_of_birth: "1990-05-15",
            first_name: "Jane",
            last_name: "Doe",
            phone: "4155550100",
            plan_id: "pln_abc123def456",
            reference_id: "EMP-001"
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
