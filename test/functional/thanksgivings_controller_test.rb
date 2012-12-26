require 'test_helper'

class ThanksgivingsControllerTest < ActionController::TestCase
  setup do
    @thanksgiving = thanksgivings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thanksgivings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thanksgiving" do
    assert_difference('Thanksgiving.count') do
      post :create, thanksgiving: { thanks: @thanksgiving.thanks }
    end

    assert_redirected_to thanksgiving_path(assigns(:thanksgiving))
  end

  test "should show thanksgiving" do
    get :show, id: @thanksgiving
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thanksgiving
    assert_response :success
  end

  test "should update thanksgiving" do
    put :update, id: @thanksgiving, thanksgiving: { thanks: @thanksgiving.thanks }
    assert_redirected_to thanksgiving_path(assigns(:thanksgiving))
  end

  test "should destroy thanksgiving" do
    assert_difference('Thanksgiving.count', -1) do
      delete :destroy, id: @thanksgiving
    end

    assert_redirected_to thanksgivings_path
  end
end
