require "test_helper"

class RegistroCnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_cname = registro_cnames(:one)
  end

  test "should get index" do
    get registro_cnames_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_cname_url
    assert_response :success
  end

  test "should create registro_cname" do
    assert_difference("RegistroCname.count") do
      post registro_cnames_url, params: { registro_cname: { nombre: @registro_cname.nombre, redirige: @registro_cname.redirige } }
    end

    assert_redirected_to registro_cname_url(RegistroCname.last)
  end

  test "should show registro_cname" do
    get registro_cname_url(@registro_cname)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_cname_url(@registro_cname)
    assert_response :success
  end

  test "should update registro_cname" do
    patch registro_cname_url(@registro_cname), params: { registro_cname: { nombre: @registro_cname.nombre, redirige: @registro_cname.redirige } }
    assert_redirected_to registro_cname_url(@registro_cname)
  end

  test "should destroy registro_cname" do
    assert_difference("RegistroCname.count", -1) do
      delete registro_cname_url(@registro_cname)
    end

    assert_redirected_to registro_cnames_url
  end
end
