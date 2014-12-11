require 'test_helper'

class TirasControllerTest < ActionController::TestCase
  setup do
    @tira = tiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tira" do
    assert_difference('Tira.count') do
      post :create, tira: { ano: @tira.ano, dia: @tira.dia, mes: @tira.mes, text1: @tira.text1, text2: @tira.text2, text3: @tira.text3, text4: @tira.text4, text5: @tira.text5, text6: @tira.text6, titulo: @tira.titulo, user_id: @tira.user_id }
    end

    assert_redirected_to tira_path(assigns(:tira))
  end

  test "should show tira" do
    get :show, id: @tira
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tira
    assert_response :success
  end

  test "should update tira" do
    patch :update, id: @tira, tira: { ano: @tira.ano, dia: @tira.dia, mes: @tira.mes, text1: @tira.text1, text2: @tira.text2, text3: @tira.text3, text4: @tira.text4, text5: @tira.text5, text6: @tira.text6, titulo: @tira.titulo, user_id: @tira.user_id }
    assert_redirected_to tira_path(assigns(:tira))
  end

  test "should destroy tira" do
    assert_difference('Tira.count', -1) do
      delete :destroy, id: @tira
    end

    assert_redirected_to tiras_path
  end
end
