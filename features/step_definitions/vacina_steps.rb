
Given('O administrador com role {string} nome completo {string}, data de nascimento: {string}, cpf: {string}, telefone: {string}, nome completo da mae {string}, numero do sus: {string}, email: {string}, password {string}, cidade: {string}, logradouro: {string},complemento: {string}, bairro: {string},cep: {string} existe') do |role, nome_completo, data_de_nascimento, cpf, telefone, nome_mae, num_sus, email, password, cidade, logradouro, complemento, bairro, cep|
  visit "/usuarios/new"
  fill_in 'usuario[nome_completo]', :with => nome_completo
  fill_in 'usuario[data_nascimento]', :with => data_de_nascimento
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[telefone]', :with => telefone
  fill_in 'usuario[nome_mae]', :with => nome_mae
  fill_in 'usuario[num_sus]', :with => num_sus
  fill_in 'usuario[email]', :with => email
  fill_in 'usuario[num_sus]', :with => num_sus
  fill_in 'usuario[password]', :with => password
  fill_in 'usuario_endereco_attributes_cep',	with: cep
  fill_in 'usuario_endereco_attributes_cidade',	with: cidade
  fill_in 'usuario_endereco_attributes_bairro',	with: bairro
  fill_in 'usuario_endereco_attributes_logradouro',	with: logradouro
  fill_in 'usuario_endereco_attributes_complemento',	with: complemento

  select(role, from: 'usuario[role]')

  click_button 'Create Usuario'

end

Given('eu estou logado no sistema com o cpf {string} e senha {string}') do |cpf, senha|
  visit "/sign_in/"
  fill_in 'session[cpf]', :with => cpf
  fill_in 'session[password]', :with => senha
  click_button 'Entrar'
  expect(page).to have_content(cpf)
end

Given('eu estou na pagina de cadastro de vacinas') do
  visit "/vacinas/new"
  expect(page).to have_current_path('/vacinas/new')
end


When('eu preencho a vacina com nome {string}, numero_lote {string} e data_validade {string}') do |nome, numero_lote, data_valida|

  fill_in 'vacina[nome_vacina]', :with => nome
  fill_in 'vacina[num_lote]', :with => numero_lote
  fill_in 'vacina[data_validade]', :with => data_valida
end

When('clico no botao de criar vacina') do
  click_button 'Create Vacina'
end

Then('vejo uma mensagem informando que a vacina foi criada com sucesso') do
  expect(page).to have_content('Vacina was successfully created.')

end

Then('eu vejo uma mensagem de erro sobre campo nome vacina') do
  expect(page).to have_content('Nome vacina cant be blank')

end


Then('eu vejo uma mensagem de erro sobre campo numero de lote') do
  expect(page).to have_content('Num lote cant be blank')

end
