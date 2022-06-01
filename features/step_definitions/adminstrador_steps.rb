When('Eu preencho o cadastro com role {string} nome completo {string}, data de nascimento: {string}, cpf: {string}, telefone: {string}, nome completo da mae {string}, numero do sus: {string}, email: {string}, password {string}, cidade: {string}, logradouro: {string},complemento: {string}, bairro: {string},cep: {string}') do |role, nome_completo, data_de_nascimento, cpf, telefone, nome_mae, num_sus, email, password, cidade, logradouro, complemento, bairro, cep|
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

end