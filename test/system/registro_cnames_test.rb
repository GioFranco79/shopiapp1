require "application_system_test_case"

class RegistroCnamesTest < ApplicationSystemTestCase
  setup do
    @registro_cname = registro_cnames(:one)
  end

  test "visiting the index" do
    visit registro_cnames_url
    assert_selector "h1", text: "Registro cnames"
  end

  test "should create registro cname" do
    visit registro_cnames_url
    click_on "New registro cname"

    fill_in "Nombre", with: @registro_cname.nombre
    fill_in "Redirige", with: @registro_cname.redirige
    click_on "Create Registro cname"

    assert_text "Registro cname was successfully created"
    click_on "Back"
  end

  test "should update Registro cname" do
    visit registro_cname_url(@registro_cname)
    click_on "Edit this registro cname", match: :first

    fill_in "Nombre", with: @registro_cname.nombre
    fill_in "Redirige", with: @registro_cname.redirige
    click_on "Update Registro cname"

    assert_text "Registro cname was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro cname" do
    visit registro_cname_url(@registro_cname)
    click_on "Destroy this registro cname", match: :first

    assert_text "Registro cname was successfully destroyed"
  end
end
