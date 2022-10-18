require "application_system_test_case"

class DominiosTest < ApplicationSystemTestCase
  setup do
    @dominio = dominios(:one)
  end

  test "visiting the index" do
    visit dominios_url
    assert_selector "h1", text: "Dominios"
  end

  test "should create dominio" do
    visit dominios_url
    click_on "New dominio"

    fill_in "Nombre", with: @dominio.nombre
    click_on "Create Dominio"

    assert_text "Dominio was successfully created"
    click_on "Back"
  end

  test "should update Dominio" do
    visit dominio_url(@dominio)
    click_on "Edit this dominio", match: :first

    fill_in "Nombre", with: @dominio.nombre
    click_on "Update Dominio"

    assert_text "Dominio was successfully updated"
    click_on "Back"
  end

  test "should destroy Dominio" do
    visit dominio_url(@dominio)
    click_on "Destroy this dominio", match: :first

    assert_text "Dominio was successfully destroyed"
  end
end
