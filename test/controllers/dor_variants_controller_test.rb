require 'test_helper'

class DorVariantsControllerTest < ActionController::TestCase
  setup do
    @dor_variants = dor_variants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:DorVariant)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dor_variant" do
    assert_difference('DorVariant.count') do
      post :create, dor_variants: {  }
    end

    assert_redirected_to dor_variant_path(assigns(:dor_variants))
  end

  test "should show dor_variant" do
    get :show, id: @dor_variants
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dor_variants
    assert_response :success
  end

  test "should update dor_variant" do
    patch :update, id: @dor_variants, dor_variants: {  }
    assert_redirected_to dor_variant_path(assigns(:dor_variants))
  end

  test "should destroy dor_variant" do
    assert_difference('DorVariant.count', -1) do
      delete :destroy, id: @dor_variants
    end

    assert_redirected_to dor_variants_path
  end
end
