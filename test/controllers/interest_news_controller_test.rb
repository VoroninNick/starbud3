require 'test_helper'

class InterestNewsControllerTest < ActionController::TestCase
  setup do
    @interest_news = interest_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interest_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest_news" do
    assert_difference('InterestNews.count') do
      post :create, interest_news: {  }
    end

    assert_redirected_to interest_news_path(assigns(:interest_news))
  end

  test "should show interest_news" do
    get :show, id: @interest_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest_news
    assert_response :success
  end

  test "should update interest_news" do
    patch :update, id: @interest_news, interest_news: {  }
    assert_redirected_to interest_news_path(assigns(:interest_news))
  end

  test "should destroy interest_news" do
    assert_difference('InterestNews.count', -1) do
      delete :destroy, id: @interest_news
    end

    assert_redirected_to interest_news_index_path
  end
end
