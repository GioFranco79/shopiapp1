require "application_system_test_case"

class RegistroTxtsTest < ApplicationSystemTestCase
  setup do
    @registro_txt = registro_txts(:one)
  end

  test "visiting the index" do
    visit registro_txts_url
    assert_selector "h1", text: "Registro txts"
  end

  test "should create registro txt" do
    visit registro_txts_url
    click_on "New registro txt"

    fill_in "Nombre", with: @registro_txt.nombre
    fill_in "Valor", with: @registro_txt.valor
    click_on "Create Registro txt"

    assert_text "Registro txt was successfully created"
    click_on "Back"
  end

  test "should update Registro txt" do
    visit registro_txt_url(@registro_txt)
    click_on "Edit this registro txt", match: :first

    fill_in "Nombre", with: @registro_txt.nombre
    fill_in "Valor", with: @registro_txt.valor
    click_on "Update Registro txt"

    assert_text "Registro txt was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro txt" do
    visit registro_txt_url(@registro_txt)
    click_on "Destroy this registro txt", match: :first

    assert_text "Registro txt was successfully destroyed"
  end
end
