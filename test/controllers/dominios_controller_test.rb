require "test_helper"

class DominiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dominio = dominios(:one)
  end

  test "should get index" do
    get dominios_url
    assert_response :success
  end

  test "should get new" do
    get new_dominio_url
    assert_response :success
  end

  test "should create dominio" do
    assert_difference("Dominio.count") do
      post dominios_url, params: { dominio: { nombre: @dominio.nombre } }
    end

    assert_redirected_to dominio_url(Dominio.last)
  end

  test "should show dominio" do
    get dominio_url(@dominio)
    assert_response :success
  end

  test "should get edit" do
    get edit_dominio_url(@dominio)
    assert_response :success
  end

  test "should update dominio" do
    patch dominio_url(@dominio), params: { dominio: { nombre: @dominio.nombre } }
    assert_redirected_to dominio_url(@dominio)
  end

  test "should destroy dominio" do
    assert_difference("Dominio.count", -1) do
      delete dominio_url(@dominio)
    end

    assert_redirected_to dominios_url
  end
end
