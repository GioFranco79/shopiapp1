require "application_system_test_case"

class RegistroSrvsTest < ApplicationSystemTestCase
  setup do
    @registro_srv = registro_srvs(:one)
  end

  test "visiting the index" do
    visit registro_srvs_url
    assert_selector "h1", text: "Registro srvs"
  end

  test "should create registro srv" do
    visit registro_srvs_url
    click_on "New registro srv"

    fill_in "Nombre", with: @registro_srv.nombre
    fill_in "Objetivo", with: @registro_srv.objetivo
    fill_in "Peso", with: @registro_srv.peso
    fill_in "Prioridad", with: @registro_srv.prioridad
    fill_in "Protocolo", with: @registro_srv.protocolo
    fill_in "Puerto", with: @registro_srv.puerto
    fill_in "Servicio", with: @registro_srv.servicio
    click_on "Create Registro srv"

    assert_text "Registro srv was successfully created"
    click_on "Back"
  end

  test "should update Registro srv" do
    visit registro_srv_url(@registro_srv)
    click_on "Edit this registro srv", match: :first

    fill_in "Nombre", with: @registro_srv.nombre
    fill_in "Objetivo", with: @registro_srv.objetivo
    fill_in "Peso", with: @registro_srv.peso
    fill_in "Prioridad", with: @registro_srv.prioridad
    fill_in "Protocolo", with: @registro_srv.protocolo
    fill_in "Puerto", with: @registro_srv.puerto
    fill_in "Servicio", with: @registro_srv.servicio
    click_on "Update Registro srv"

    assert_text "Registro srv was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro srv" do
    visit registro_srv_url(@registro_srv)
    click_on "Destroy this registro srv", match: :first

    assert_text "Registro srv was successfully destroyed"
  end
end
