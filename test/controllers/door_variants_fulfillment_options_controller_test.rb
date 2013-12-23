require 'test_helper'

class DoorVariantsFulfillmentOptionsControllerTest < ActionController::TestCase
  setup do
    @door_variants_fulfillment_option = door_variants_fulfillment_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:door_variants_fulfillment_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create door_variants_fulfillment_option" do
    assert_difference('DoorVariantsFulfillmentOption.count') do
      post :create, door_variants_fulfillment_option: {  }
    end

    assert_redirected_to door_variants_fulfillment_option_path(assigns(:door_variants_fulfillment_option))
  end

  test "should show door_variants_fulfillment_option" do
    get :show, id: @door_variants_fulfillment_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @door_variants_fulfillment_option
    assert_response :success
  end

  test "should update door_variants_fulfillment_option" do
    patch :update, id: @door_variants_fulfillment_option, door_variants_fulfillment_option: {  }
    assert_redirected_to door_variants_fulfillment_option_path(assigns(:door_variants_fulfillment_option))
  end

  test "should destroy door_variants_fulfillment_option" do
    assert_difference('DoorVariantsFulfillmentOption.count', -1) do
      delete :destroy, id: @door_variants_fulfillment_option
    end

    assert_redirected_to door_variants_fulfillment_options_path
  end
end
