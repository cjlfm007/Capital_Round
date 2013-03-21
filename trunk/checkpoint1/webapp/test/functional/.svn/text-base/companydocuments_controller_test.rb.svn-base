require 'test_helper'

class CompanydocumentsControllerTest < ActionController::TestCase
  setup do
    @companydocument = companydocuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companydocuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companydocument" do
    assert_difference('Companydocument.count') do
      post :create, companydocument: { path: @companydocument.path, startup_id: @companydocument.startup_id, title: @companydocument.title }
    end

    assert_redirected_to companydocument_path(assigns(:companydocument))
  end

  test "should show companydocument" do
    get :show, id: @companydocument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companydocument
    assert_response :success
  end

  test "should update companydocument" do
    put :update, id: @companydocument, companydocument: { path: @companydocument.path, startup_id: @companydocument.startup_id, title: @companydocument.title }
    assert_redirected_to companydocument_path(assigns(:companydocument))
  end

  test "should destroy document" do
    assert_difference('Companydocument.count', -1) do
      delete :destroy, id: @document
    end

    assert_redirected_to companydocuments_path
  end
end
