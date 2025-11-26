# frozen_string_literal: true

require_relative "../test_helper"

class VitablePartnerAPI::Test::Resources::DependentsTest < VitablePartnerAPI::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.dependents.update("dpnd__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Dependent
    end
  end
end
