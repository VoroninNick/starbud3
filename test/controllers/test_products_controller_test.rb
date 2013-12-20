require 'test_helper'

class TestProductsControllerTest < ActionController::TestCase
  setup do
    @test_product = test_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_product" do
    assert_difference('TestProduct.count') do
      post :create, test_product: { name: @test_product.name, string: @test_product.string }
    end

    assert_redirected_to test_product_path(assigns(:test_product))
  end

  test "should show test_product" do
    get :show, id: @test_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_product
    assert_response :success
  end

  test "should update test_product" do
    patch :update, id: @test_product, test_product: { name: @test_product.name, string: @test_product.string }
    assert_redirected_to test_product_path(assigns(:test_product))
  end

  test "should destroy test_product" do
    assert_difference('TestProduct.count', -1) do
      delete :destroy, id: @test_product
    end

    assert_redirected_to test_products_path
  end
end
