require 'test_helper'

class DorInformationsControllerTest < ActionController::TestCase
  setup do
    @dor_information = dor_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dor_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dor_information" do
    assert_difference('DorInformation.count') do
      post :create, dor_information: {  }
    end

    assert_redirected_to dor_information_path(assigns(:dor_information))
  end

  test "should show dor_information" do
    get :show, id: @dor_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dor_information
    assert_response :success
  end

  test "should update dor_information" do
    patch :update, id: @dor_information, dor_information: {  }
    assert_redirected_to dor_information_path(assigns(:dor_information))
  end

  test "should destroy dor_information" do
    assert_difference('DorInformation.count', -1) do
      delete :destroy, id: @dor_information
    end

    assert_redirected_to dor_informations_path
  end
end
