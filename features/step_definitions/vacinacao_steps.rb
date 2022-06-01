
Given('a vacina com nome {string}, numero_lote {string} e data_validade {string} existe') do |nome,num_lote,data|
  visit "/vacinas/new"
  expect(page).to have_current_path('/vacinas/new')
  fill_in 'vacina[nome_vacina]', :with => nome
  fill_in 'vacina[num_lote]', :with => num_lote
  fill_in 'vacina[data_validade]', :with => data
  click_button 'Create Vacina'
end

Given('eu estou na pagina de Agendamento de Vacinas') do
  visit "/usuarios/" + Usuario.last.id.to_s + "/vacinacaos/"
  expect(page).to have_current_path("/usuarios/" + Usuario.last.id.to_s + "/vacinacaos/")
end

When('eu clico no link de cadastrar novo agendamento') do
  click_link 'New vacinacao'
end

When('eu preencho o agendamento de vacina com Localizacao {string}, data {string}, horario {string}, vacina de nome {string},') do |localizacao, data, horario, vacina_id|

  select(vacina_id, from: 'vacinacao[vacina_id]')

  fill_in 'vacinacao[data]', :with => data
  fill_in 'vacinacao[horario]', :with => horario
  fill_in 'vacinacao[desc_local]', :with => localizacao
end

When('eu clico no botao de criar agendamento') do
  click_button 'Create Vacinacao'
end

Then('vejo uma mensagem informando que o agendamento foi criado com sucesso') do
  expect(page).to have_content("Vacinacao was successfully created.")

end

Then('vejo uma mensagem informando que o local esta invalido') do
  expect(page).to have_content("local cant be blank")

end


Given('o agendamento de vacina com Localizacao {string}, data {string}, horario {string}, vacina de nome {string} existe') do |localizacao, data, horario, vacina_id|
  expect(page).to have_current_path("/usuarios/" + Usuario.last.id.to_s + "/vacinacaos/")
  click_link 'New vacinacao'
  select(vacina_id, from: 'vacinacao[vacina_id]')

  fill_in 'vacinacao[data]', :with => data
  fill_in 'vacinacao[horario]', :with => horario
  fill_in 'vacinacao[desc_local]', :with => localizacao

  click_button 'Create Vacinacao'
end

Given('eu estou na pagina dessa vacina') do
  expect(page).to have_current_path("/usuarios/" + Usuario.last.id.to_s + "/vacinacaos/" + Vacinacao.last.id.to_s)

end



When('eu clico em editar o agendamento') do
  click_link 'Edit this vacinacao'
end

When('eu edito o agendamento para Localizacao {string}, data {string}, horario {string}, vacina de nome {string}') do |localizacao, data, horario, vacina_id|
  expect(page).to have_current_path("/usuarios/" + Usuario.last.id.to_s + "/vacinacaos/" + Vacinacao.last.id.to_s + '/edit')
  select(vacina_id, from: 'vacinacao[vacina_id]')

  fill_in 'vacinacao[data]', :with => data
  fill_in 'vacinacao[horario]', :with => horario
  fill_in 'vacinacao[desc_local]', :with => localizacao
end

When('clico em atualizar vacinacao') do
  click_button 'Update Vacinacao'
end

Then('vejo uma mensagem informando que o agendamento foi editado com sucesso') do
  expect(page).to have_content('Vacinacao was successfully updated.')

end