require 'test_helper'

class DoorColorOptionsControllerTest < ActionController::TestCase
  setup do
    @door_color_option = door_color_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:door_color_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create door_color_option" do
    assert_difference('DoorColorOption.count') do
      post :create, door_color_option: {  }
    end

    assert_redirected_to door_color_option_path(assigns(:door_color_option))
  end

  test "should show door_color_option" do
    get :show, id: @door_color_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @door_color_option
    assert_response :success
  end

  test "should update door_color_option" do
    patch :update, id: @door_color_option, door_color_option: {  }
    assert_redirected_to door_color_option_path(assigns(:door_color_option))
  end

  test "should destroy door_color_option" do
    assert_difference('DoorColorOption.count', -1) do
      delete :destroy, id: @door_color_option
    end

    assert_redirected_to door_color_options_path
  end
end
