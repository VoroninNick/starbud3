require 'test_helper'

class AboutArticlesControllerTest < ActionController::TestCase
  setup do
    @about_article = about_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_article" do
    assert_difference('AboutArticle.count') do
      post :create, about_article: {  }
    end

    assert_redirected_to about_article_path(assigns(:about_article))
  end

  test "should show about_article" do
    get :show, id: @about_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_article
    assert_response :success
  end

  test "should update about_article" do
    patch :update, id: @about_article, about_article: {  }
    assert_redirected_to about_article_path(assigns(:about_article))
  end

  test "should destroy about_article" do
    assert_difference('AboutArticle.count', -1) do
      delete :destroy, id: @about_article
    end

    assert_redirected_to about_articles_path
  end
end
