Feature: Usuario

  As a usuario do sistema vem-vacina
  I want to me cadastrar, logar e editar meu cadastro
  so that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar novo usuario no sistema
    Given Eu estou na pagina de cadastro de usuario
    And Eu preencho o cadastro como role 'Usuario', nome completo 'Tarcisio de Creta', data de nascimento: '1980-10-10', cpf: '11111111112', telefone: '81955555555', nome completo da mae 'Virginia de Souza', numero do sus: '12345678', email: 'tarcisio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55555555'
    When Eu clico em cadastrar
    Then Eu vejo a mensagem de que o cadastro foi efeituado

  Scenario: logar no sistema
    Given O usuario com role 'Usuario', nome completo 'Tarcisio de Creta', data de nascimento: '1980-10-10', cpf: '12345678915', telefone: '81955555555', nome completo da mae 'Virginia de Souza', numero do sus: '12345678', email: 'tarcisio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55555555' existe
    Given Eu estou na pagina de login
    And Eu preencho login como cpf "12345678915" e senha com "123456"
    When Eu Clico em entrar
    Then Eu vejo que estou na pagina do meu usuario

  Scenario: cadastrar novo usuario com campo cpf com caracteres menores que o permitido
    Given Eu estou na pagina de cadastro de usuario
    And Eu preencho o cadastro como role 'Usuario', nome completo 'Tarcisio de Creta', data de nascimento: '1980-10-10', cpf: '12345915', telefone: '81955555555', nome completo da mae 'Virginia de Souza', numero do sus: '12345678', email: 'tarcisio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55555555'
    When Eu clico em cadastrar
    Then Eu vejo uma mensagem de erro e exibida
