require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get product_page_path
    assert_response :success
  end

  test "should get price" do
    get product_price_path
    assert_response :success
  end

end
