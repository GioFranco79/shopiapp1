require "application_system_test_case"

class RegistroMxesTest < ApplicationSystemTestCase
  setup do
    @registro_mx = registro_mxes(:one)
  end

  test "visiting the index" do
    visit registro_mxes_url
    assert_selector "h1", text: "Registro mxes"
  end

  test "should create registro mx" do
    visit registro_mxes_url
    click_on "New registro mx"

    fill_in "Nombre", with: @registro_mx.nombre
    fill_in "Prioridad", with: @registro_mx.prioridad
    fill_in "Redirige", with: @registro_mx.redirige
    click_on "Create Registro mx"

    assert_text "Registro mx was successfully created"
    click_on "Back"
  end

  test "should update Registro mx" do
    visit registro_mx_url(@registro_mx)
    click_on "Edit this registro mx", match: :first

    fill_in "Nombre", with: @registro_mx.nombre
    fill_in "Prioridad", with: @registro_mx.prioridad
    fill_in "Redirige", with: @registro_mx.redirige
    click_on "Update Registro mx"

    assert_text "Registro mx was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro mx" do
    visit registro_mx_url(@registro_mx)
    click_on "Destroy this registro mx", match: :first

    assert_text "Registro mx was successfully destroyed"
  end
end
