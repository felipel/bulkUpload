require 'test_helper'

class AdUnitSizesControllerTest < ActionController::TestCase
  setup do
    @ad_unit_size = ad_unit_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_unit_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_unit_size" do
    assert_difference('AdUnitSize.count') do
      post :create, :ad_unit_size => @ad_unit_size.attributes
    end

    assert_redirected_to ad_unit_size_path(assigns(:ad_unit_size))
  end

  test "should show ad_unit_size" do
    get :show, :id => @ad_unit_size.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ad_unit_size.to_param
    assert_response :success
  end

  test "should update ad_unit_size" do
    put :update, :id => @ad_unit_size.to_param, :ad_unit_size => @ad_unit_size.attributes
    assert_redirected_to ad_unit_size_path(assigns(:ad_unit_size))
  end

  test "should destroy ad_unit_size" do
    assert_difference('AdUnitSize.count', -1) do
      delete :destroy, :id => @ad_unit_size.to_param
    end

    assert_redirected_to ad_unit_sizes_path
  end
end
