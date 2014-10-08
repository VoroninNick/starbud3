require 'test_helper'

class DorsControllerTest < ActionController::TestCase
  setup do
    @dor = dors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dor" do
    assert_difference('Dor.count') do
      post :create, dor: {  }
    end

    assert_redirected_to dor_path(assigns(:dor))
  end

  test "should show dor" do
    get :show, id: @dor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dor
    assert_response :success
  end

  test "should update dor" do
    patch :update, id: @dor, dor: {  }
    assert_redirected_to dor_path(assigns(:dor))
  end

  test "should destroy dor" do
    assert_difference('Dor.count', -1) do
      delete :destroy, id: @dor
    end

    assert_redirected_to dors_path
  end
end
