require "test_helper"

class RegistroMxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_mx = registro_mxes(:one)
  end

  test "should get index" do
    get registro_mxes_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_mx_url
    assert_response :success
  end

  test "should create registro_mx" do
    assert_difference("RegistroMx.count") do
      post registro_mxes_url, params: { registro_mx: { nombre: @registro_mx.nombre, prioridad: @registro_mx.prioridad, redirige: @registro_mx.redirige } }
    end

    assert_redirected_to registro_mx_url(RegistroMx.last)
  end

  test "should show registro_mx" do
    get registro_mx_url(@registro_mx)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_mx_url(@registro_mx)
    assert_response :success
  end

  test "should update registro_mx" do
    patch registro_mx_url(@registro_mx), params: { registro_mx: { nombre: @registro_mx.nombre, prioridad: @registro_mx.prioridad, redirige: @registro_mx.redirige } }
    assert_redirected_to registro_mx_url(@registro_mx)
  end

  test "should destroy registro_mx" do
    assert_difference("RegistroMx.count", -1) do
      delete registro_mx_url(@registro_mx)
    end

    assert_redirected_to registro_mxes_url
  end
end
