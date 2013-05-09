require 'test_helper'

class ExistsControllerTest < ActionController::TestCase
  setup do
    @exist = exists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exist" do
    assert_difference('Exist.count') do
      post :create, exist: {  }
    end

    assert_redirected_to exist_path(assigns(:exist))
  end

  test "should show exist" do
    get :show, id: @exist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exist
    assert_response :success
  end

  test "should update exist" do
    put :update, id: @exist, exist: {  }
    assert_redirected_to exist_path(assigns(:exist))
  end

  test "should destroy exist" do
    assert_difference('Exist.count', -1) do
      delete :destroy, id: @exist
    end

    assert_redirected_to exists_path
  end
end
