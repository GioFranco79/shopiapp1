require "application_system_test_case"

class RegistroAsTest < ApplicationSystemTestCase
  setup do
    @registro_a = registro_as(:one)
  end

  test "visiting the index" do
    visit registro_as_url
    assert_selector "h1", text: "Registro as"
  end

  test "should create registro a" do
    visit registro_as_url
    click_on "New registro a"

    fill_in "Nombre", with: @registro_a.nombre
    fill_in "Redirige", with: @registro_a.redirige
    click_on "Create Registro a"

    assert_text "Registro a was successfully created"
    click_on "Back"
  end

  test "should update Registro a" do
    visit registro_a_url(@registro_a)
    click_on "Edit this registro a", match: :first

    fill_in "Nombre", with: @registro_a.nombre
    fill_in "Redirige", with: @registro_a.redirige
    click_on "Update Registro a"

    assert_text "Registro a was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro a" do
    visit registro_a_url(@registro_a)
    click_on "Destroy this registro a", match: :first

    assert_text "Registro a was successfully destroyed"
  end
end
