require "application_system_test_case"

class VacinasTest < ApplicationSystemTestCase
  setup do
    @vacina = vacinas(:one)
  end

  test "visiting the index" do
    visit vacinas_url
    assert_selector "h1", text: "Vacinas"
  end

  test "should create vacina" do
    visit vacinas_url
    click_on "New vacina"

    fill_in "Data validade", with: @vacina.data_validade
    fill_in "Nome vacina", with: @vacina.nome_vacina
    fill_in "Num lote", with: @vacina.num_lote
    click_on "Create Vacina"

    assert_text "Vacina was successfully created"
    click_on "Back"
  end

  test "should update Vacina" do
    visit vacina_url(@vacina)
    click_on "Edit this vacina", match: :first

    fill_in "Data validade", with: @vacina.data_validade
    fill_in "Nome vacina", with: @vacina.nome_vacina
    fill_in "Num lote", with: @vacina.num_lote
    click_on "Update Vacina"

    assert_text "Vacina was successfully updated"
    click_on "Back"
  end

  test "should destroy Vacina" do
    visit vacina_url(@vacina)
    click_on "Destroy this vacina", match: :first

    assert_text "Vacina was successfully destroyed"
  end
end
