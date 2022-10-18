require "application_system_test_case"

class RegistroAaaasTest < ApplicationSystemTestCase
  setup do
    @registro_aaaa = registro_aaaas(:one)
  end

  test "visiting the index" do
    visit registro_aaaas_url
    assert_selector "h1", text: "Registro aaaas"
  end

  test "should create registro aaaa" do
    visit registro_aaaas_url
    click_on "New registro aaaa"

    fill_in "Nombre", with: @registro_aaaa.nombre
    fill_in "Redirige", with: @registro_aaaa.redirige
    click_on "Create Registro aaaa"

    assert_text "Registro aaaa was successfully created"
    click_on "Back"
  end

  test "should update Registro aaaa" do
    visit registro_aaaa_url(@registro_aaaa)
    click_on "Edit this registro aaaa", match: :first

    fill_in "Nombre", with: @registro_aaaa.nombre
    fill_in "Redirige", with: @registro_aaaa.redirige
    click_on "Update Registro aaaa"

    assert_text "Registro aaaa was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro aaaa" do
    visit registro_aaaa_url(@registro_aaaa)
    click_on "Destroy this registro aaaa", match: :first

    assert_text "Registro aaaa was successfully destroyed"
  end
end
