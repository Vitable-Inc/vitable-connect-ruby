# frozen_string_literal: true

require_relative "../test_helper"

class VitablePartnerAPI::Test::Resources::BenefitProductsTest < VitablePartnerAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.benefit_products.list

    assert_pattern do
      response => VitablePartnerAPI::Models::BenefitProductListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProduct]) | nil,
        pagination: VitablePartnerAPI::Models::BenefitProductListResponse::Pagination | nil
      }
    end
  end

  def test_generate_quote_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.benefit_products.generate_quote(
        "bprd__1k--w2KifJ1",
        employer_id: "empr__1k--w2KifJ1"
      )

    assert_pattern do
      response => VitablePartnerAPI::Quote
    end

    assert_pattern do
      response => {
        benefit_product_id: String,
        employer_id: String,
        total_cost_in_cents: Integer,
        breakdown: ^(VitablePartnerAPI::Internal::Type::HashOf[VitablePartnerAPI::Internal::Type::Unknown]) | nil
      }
    end
  end
end
