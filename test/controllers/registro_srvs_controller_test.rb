require "test_helper"

class RegistroSrvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_srv = registro_srvs(:one)
  end

  test "should get index" do
    get registro_srvs_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_srv_url
    assert_response :success
  end

  test "should create registro_srv" do
    assert_difference("RegistroSrv.count") do
      post registro_srvs_url, params: { registro_srv: { nombre: @registro_srv.nombre, objetivo: @registro_srv.objetivo, peso: @registro_srv.peso, prioridad: @registro_srv.prioridad, protocolo: @registro_srv.protocolo, puerto: @registro_srv.puerto, servicio: @registro_srv.servicio } }
    end

    assert_redirected_to registro_srv_url(RegistroSrv.last)
  end

  test "should show registro_srv" do
    get registro_srv_url(@registro_srv)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_srv_url(@registro_srv)
    assert_response :success
  end

  test "should update registro_srv" do
    patch registro_srv_url(@registro_srv), params: { registro_srv: { nombre: @registro_srv.nombre, objetivo: @registro_srv.objetivo, peso: @registro_srv.peso, prioridad: @registro_srv.prioridad, protocolo: @registro_srv.protocolo, puerto: @registro_srv.puerto, servicio: @registro_srv.servicio } }
    assert_redirected_to registro_srv_url(@registro_srv)
  end

  test "should destroy registro_srv" do
    assert_difference("RegistroSrv.count", -1) do
      delete registro_srv_url(@registro_srv)
    end

    assert_redirected_to registro_srvs_url
  end
end
