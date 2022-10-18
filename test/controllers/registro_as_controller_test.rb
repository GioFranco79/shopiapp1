require "test_helper"

class RegistroAsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_a = registro_as(:one)
  end

  test "should get index" do
    get registro_as_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_a_url
    assert_response :success
  end

  test "should create registro_a" do
    assert_difference("RegistroA.count") do
      post registro_as_url, params: { registro_a: { nombre: @registro_a.nombre, redirige: @registro_a.redirige } }
    end

    assert_redirected_to registro_a_url(RegistroA.last)
  end

  test "should show registro_a" do
    get registro_a_url(@registro_a)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_a_url(@registro_a)
    assert_response :success
  end

  test "should update registro_a" do
    patch registro_a_url(@registro_a), params: { registro_a: { nombre: @registro_a.nombre, redirige: @registro_a.redirige } }
    assert_redirected_to registro_a_url(@registro_a)
  end

  test "should destroy registro_a" do
    assert_difference("RegistroA.count", -1) do
      delete registro_a_url(@registro_a)
    end

    assert_redirected_to registro_as_url
  end
end
