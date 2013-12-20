require 'test_helper'

class VariantsColorsControllerTest < ActionController::TestCase
  setup do
    @variants_color = variants_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variants_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variants_color" do
    assert_difference('VariantsColor.count') do
      post :create, variants_color: {  }
    end

    assert_redirected_to variants_color_path(assigns(:variants_color))
  end

  test "should show variants_color" do
    get :show, id: @variants_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @variants_color
    assert_response :success
  end

  test "should update variants_color" do
    patch :update, id: @variants_color, variants_color: {  }
    assert_redirected_to variants_color_path(assigns(:variants_color))
  end

  test "should destroy variants_color" do
    assert_difference('VariantsColor.count', -1) do
      delete :destroy, id: @variants_color
    end

    assert_redirected_to variants_colors_path
  end
end
