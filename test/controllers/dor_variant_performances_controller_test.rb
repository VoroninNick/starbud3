require 'test_helper'

class DorVariantPerformancesControllerTest < ActionController::TestCase
  setup do
    @dor_variant_performance = dor_variant_performances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dor_variant_performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dor_variant_performance" do
    assert_difference('DorVariantPerformance.count') do
      post :create, dor_variant_performance: {  }
    end

    assert_redirected_to dor_variant_performance_path(assigns(:dor_variant_performance))
  end

  test "should show dor_variant_performance" do
    get :show, id: @dor_variant_performance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dor_variant_performance
    assert_response :success
  end

  test "should update dor_variant_performance" do
    patch :update, id: @dor_variant_performance, dor_variant_performance: {  }
    assert_redirected_to dor_variant_performance_path(assigns(:dor_variant_performance))
  end

  test "should destroy dor_variant_performance" do
    assert_difference('DorVariantPerformance.count', -1) do
      delete :destroy, id: @dor_variant_performance
    end

    assert_redirected_to dor_variant_performances_path
  end
end
