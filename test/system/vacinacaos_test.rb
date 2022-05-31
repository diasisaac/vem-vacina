require "application_system_test_case"

class VacinacaosTest < ApplicationSystemTestCase
  setup do
    @vacinacao = vacinacaos(:one)
  end

  test "visiting the index" do
    visit vacinacaos_url
    assert_selector "h1", text: "Vacinacaos"
  end

  test "should create vacinacao" do
    visit vacinacaos_url
    click_on "New vacinacao"

    fill_in "Data", with: @vacinacao.data
    fill_in "Desc local", with: @vacinacao.desc_local
    fill_in "Horario", with: @vacinacao.horario
    fill_in "Usuario", with: @vacinacao.usuario_id
    click_on "Create Vacinacao"

    assert_text "Vacinacao was successfully created"
    click_on "Back"
  end

  test "should update Vacinacao" do
    visit vacinacao_url(@vacinacao)
    click_on "Edit this vacinacao", match: :first

    fill_in "Data", with: @vacinacao.data
    fill_in "Desc local", with: @vacinacao.desc_local
    fill_in "Horario", with: @vacinacao.horario
    fill_in "Usuario", with: @vacinacao.usuario_id
    click_on "Update Vacinacao"

    assert_text "Vacinacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Vacinacao" do
    visit vacinacao_url(@vacinacao)
    click_on "Destroy this vacinacao", match: :first

    assert_text "Vacinacao was successfully destroyed"
  end
end
