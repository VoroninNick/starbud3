require 'test_helper'

class VideoOnMainPagesControllerTest < ActionController::TestCase
  setup do
    @video_on_main_page = video_on_main_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_on_main_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_on_main_page" do
    assert_difference('VideoOnMainPage.count') do
      post :create, video_on_main_page: {  }
    end

    assert_redirected_to video_on_main_page_path(assigns(:video_on_main_page))
  end

  test "should show video_on_main_page" do
    get :show, id: @video_on_main_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video_on_main_page
    assert_response :success
  end

  test "should update video_on_main_page" do
    patch :update, id: @video_on_main_page, video_on_main_page: {  }
    assert_redirected_to video_on_main_page_path(assigns(:video_on_main_page))
  end

  test "should destroy video_on_main_page" do
    assert_difference('VideoOnMainPage.count', -1) do
      delete :destroy, id: @video_on_main_page
    end

    assert_redirected_to video_on_main_pages_path
  end
end
