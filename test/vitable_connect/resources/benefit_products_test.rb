# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::BenefitProductsTest < VitableConnect::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect.benefit_products.list

    assert_pattern do
      response => VitableConnect::Models::BenefitProductListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::BenefitProductListResponse::Data]),
        pagination: VitableConnect::Pagination
      }
    end
  end
end
