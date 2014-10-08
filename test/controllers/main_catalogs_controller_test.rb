require 'test_helper'

class MainCatalogsControllerTest < ActionController::TestCase
  setup do
    @main_catalog = main_catalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_catalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_catalog" do
    assert_difference('MainCatalog.count') do
      post :create, main_catalog: {  }
    end

    assert_redirected_to main_catalog_path(assigns(:main_catalog))
  end

  test "should show main_catalog" do
    get :show, id: @main_catalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_catalog
    assert_response :success
  end

  test "should update main_catalog" do
    patch :update, id: @main_catalog, main_catalog: {  }
    assert_redirected_to main_catalog_path(assigns(:main_catalog))
  end

  test "should destroy main_catalog" do
    assert_difference('MainCatalog.count', -1) do
      delete :destroy, id: @main_catalog
    end

    assert_redirected_to main_catalogs_path
  end
end
