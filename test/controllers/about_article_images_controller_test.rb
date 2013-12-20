require 'test_helper'

class AboutArticleImagesControllerTest < ActionController::TestCase
  setup do
    @about_article_image = about_article_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_article_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_article_image" do
    assert_difference('AboutArticleImage.count') do
      post :create, about_article_image: {  }
    end

    assert_redirected_to about_article_image_path(assigns(:about_article_image))
  end

  test "should show about_article_image" do
    get :show, id: @about_article_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_article_image
    assert_response :success
  end

  test "should update about_article_image" do
    patch :update, id: @about_article_image, about_article_image: {  }
    assert_redirected_to about_article_image_path(assigns(:about_article_image))
  end

  test "should destroy about_article_image" do
    assert_difference('AboutArticleImage.count', -1) do
      delete :destroy, id: @about_article_image
    end

    assert_redirected_to about_article_images_path
  end
end
