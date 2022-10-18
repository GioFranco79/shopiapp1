require "test_helper"

class RegistroTxtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_txt = registro_txts(:one)
  end

  test "should get index" do
    get registro_txts_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_txt_url
    assert_response :success
  end

  test "should create registro_txt" do
    assert_difference("RegistroTxt.count") do
      post registro_txts_url, params: { registro_txt: { nombre: @registro_txt.nombre, valor: @registro_txt.valor } }
    end

    assert_redirected_to registro_txt_url(RegistroTxt.last)
  end

  test "should show registro_txt" do
    get registro_txt_url(@registro_txt)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_txt_url(@registro_txt)
    assert_response :success
  end

  test "should update registro_txt" do
    patch registro_txt_url(@registro_txt), params: { registro_txt: { nombre: @registro_txt.nombre, valor: @registro_txt.valor } }
    assert_redirected_to registro_txt_url(@registro_txt)
  end

  test "should destroy registro_txt" do
    assert_difference("RegistroTxt.count", -1) do
      delete registro_txt_url(@registro_txt)
    end

    assert_redirected_to registro_txts_url
  end
end
