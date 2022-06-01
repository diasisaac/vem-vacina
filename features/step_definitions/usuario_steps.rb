
Given('Eu estou na pagina de cadastro de usuario') do
  visit "/usuarios/new"
  expect(page).to have_current_path('/usuarios/new')
end

Given('Eu preencho o cadastro como role {string}, nome completo {string}, data de nascimento: {string}, cpf: {string}, telefone: {string}, nome completo da mae {string}, numero do sus: {string}, email: {string}, password {string}, cidade: {string}, logradouro: {string},complemento: {string}, bairro: {string},cep: {string}') do |role, nome_completo, data_de_nascimento, cpf, telefone, nome_mae, num_sus, email, password, cidade, logradouro, complemento, bairro, cep|
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

end

When('Eu clico em cadastrar') do
  click_button 'Create Usuario'
end

Then('Eu vejo a mensagem de que o cadastro foi efeituado') do
  expect(page).to have_content("Usuario cadastrado")
end


Given('O usuario com role {string}, nome completo {string}, data de nascimento: {string}, cpf: {string}, telefone: {string}, nome completo da mae {string}, numero do sus: {string}, email: {string}, password {string}, cidade: {string}, logradouro: {string},complemento: {string}, bairro: {string},cep: {string} existe') do |role, nome_completo, data_de_nascimento, cpf, telefone, nome_mae, num_sus, email, password, cidade, logradouro, complemento, bairro, cep|
  visit "/usuarios/new"
  expect(page).to have_current_path('/usuarios/new')
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

Given('Eu estou na pagina de login') do
  expect(page).to have_current_path('/')
end

Given('Eu preencho login como cpf {string} e senha com {string}') do |cpf, senha|
  visit "/sign_in"
  fill_in 'session[cpf]', :with => cpf
  fill_in 'session[password]', :with => senha
end

When('Eu Clico em entrar') do
  click_button 'Entrar'
end

Then('Eu vejo que estou na pagina do meu usuario') do
  expect(page).to have_content("Show de Usuario")
end


Then('Eu vejo uma mensagem de erro e exibida') do
  expect(page).to have_content('Cpf is the wrong length (should be 11 characters)')
end
