Feature: Administrador

  As a administrador do sistema vem-vacina
  I want to me cadastrar, logar e editar meu cadastro
  so that eu possa ter acesso ao sistema

  Scenario: cadastrar administrador no sistema
    Given Eu estou na pagina de cadastro de usuario
    When Eu preencho o cadastro com role 'Admin' nome completo 'Andre de Creta', data de nascimento: '1980-10-10', cpf: '49727185695', telefone: '81950155555', nome completo da mae 'Virgingh de Souza', numero do sus: '12345678', email: 'tarcisio123@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '52553555'
    When Eu clico no botao de cadastrar
    Then Eu vejo a mensagem de que o cadastro foi efeituado

  Scenario: logar como administrador no sistema
    Given O administrador com role 'Admin' nome completo 'Tkyro de Creta', data de nascimento: '1980-10-10', cpf: '12553685463', telefone: '81955577555', nome completo da mae 'Virginera de Souza', numero do sus: '12345678', email: 'tarcisio88@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '64555555' existe
    Given Eu estou na pagina de login
    And Eu preencho login como cpf "12553685463" e senha com "123456"
    When Eu Clico no botao de entrar
    Then Eu vejo que estou na pagina do meu usuario

  Scenario: cadastrar administrador com campo cpf com caracteres menores que o permitido
    Given Eu estou na pagina de cadastro de usuario
    And Eu preencho o cadastro como role 'Admin', nome completo 'Tarcisipo de Creta', data de nascimento: '1980-10-10', cpf: '12345915', telefone: '81900055555', nome completo da mae 'Virgimnia de Souza', numero do sus: '12345678', email: 'tarcisio657@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55666555'
    When Eu clico no botao de cadastrar
    Then Eu vejo uma mensagem de erro e exibida