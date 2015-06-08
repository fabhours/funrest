require 'test_helper'

class KartusControllerTest < ActionController::TestCase
  setup do
    @kartu = kartus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kartus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kartu" do
    assert_difference('Kartu.count') do
      post :create, kartu: { nomor: @kartu.nomor }
    end

    assert_redirected_to kartu_path(assigns(:kartu))
  end

  test "should show kartu" do
    get :show, id: @kartu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kartu
    assert_response :success
  end

  test "should update kartu" do
    patch :update, id: @kartu, kartu: { nomor: @kartu.nomor }
    assert_redirected_to kartu_path(assigns(:kartu))
  end

  test "should destroy kartu" do
    assert_difference('Kartu.count', -1) do
      delete :destroy, id: @kartu
    end

    assert_redirected_to kartus_path
  end
end
