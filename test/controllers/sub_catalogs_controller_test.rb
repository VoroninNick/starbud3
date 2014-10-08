require 'test_helper'

class SubCatalogsControllerTest < ActionController::TestCase
  setup do
    @sub_catalog = sub_catalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_catalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_catalog" do
    assert_difference('SubCatalog.count') do
      post :create, sub_catalog: {  }
    end

    assert_redirected_to sub_catalog_path(assigns(:sub_catalog))
  end

  test "should show sub_catalog" do
    get :show, id: @sub_catalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_catalog
    assert_response :success
  end

  test "should update sub_catalog" do
    patch :update, id: @sub_catalog, sub_catalog: {  }
    assert_redirected_to sub_catalog_path(assigns(:sub_catalog))
  end

  test "should destroy sub_catalog" do
    assert_difference('SubCatalog.count', -1) do
      delete :destroy, id: @sub_catalog
    end

    assert_redirected_to sub_catalogs_path
  end
end
