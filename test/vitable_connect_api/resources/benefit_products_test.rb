# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::BenefitProductsTest < VitableConnectAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.benefit_products.list

    assert_pattern do
      response => VitableConnectAPI::Models::BenefitProductListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Models::BenefitProductListResponse::Data]),
        pagination: VitableConnectAPI::Models::BenefitProductListResponse::Pagination
      }
    end
  end
end
