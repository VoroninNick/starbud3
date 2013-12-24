require 'test_helper'

class UsefulVideosControllerTest < ActionController::TestCase
  setup do
    @useful_video = useful_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:useful_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create useful_video" do
    assert_difference('UsefulVideo.count') do
      post :create, useful_video: {  }
    end

    assert_redirected_to useful_video_path(assigns(:useful_video))
  end

  test "should show useful_video" do
    get :show, id: @useful_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @useful_video
    assert_response :success
  end

  test "should update useful_video" do
    patch :update, id: @useful_video, useful_video: {  }
    assert_redirected_to useful_video_path(assigns(:useful_video))
  end

  test "should destroy useful_video" do
    assert_difference('UsefulVideo.count', -1) do
      delete :destroy, id: @useful_video
    end

    assert_redirected_to useful_videos_path
  end
end
