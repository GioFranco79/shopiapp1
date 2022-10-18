require "test_helper"

class RegistroAaaasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_aaaa = registro_aaaas(:one)
  end

  test "should get index" do
    get registro_aaaas_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_aaaa_url
    assert_response :success
  end

  test "should create registro_aaaa" do
    assert_difference("RegistroAaaa.count") do
      post registro_aaaas_url, params: { registro_aaaa: { nombre: @registro_aaaa.nombre, redirige: @registro_aaaa.redirige } }
    end

    assert_redirected_to registro_aaaa_url(RegistroAaaa.last)
  end

  test "should show registro_aaaa" do
    get registro_aaaa_url(@registro_aaaa)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_aaaa_url(@registro_aaaa)
    assert_response :success
  end

  test "should update registro_aaaa" do
    patch registro_aaaa_url(@registro_aaaa), params: { registro_aaaa: { nombre: @registro_aaaa.nombre, redirige: @registro_aaaa.redirige } }
    assert_redirected_to registro_aaaa_url(@registro_aaaa)
  end

  test "should destroy registro_aaaa" do
    assert_difference("RegistroAaaa.count", -1) do
      delete registro_aaaa_url(@registro_aaaa)
    end

    assert_redirected_to registro_aaaas_url
  end
end
