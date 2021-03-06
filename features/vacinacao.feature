Feature: Vacinacao
  As a administrador do sistema vem-vacina
  I want to cadastrar, editar e apagar um agendamento de vacinas
  So that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar novo agendamento de vacina

    Given O administrador com role 'Admin' nome completo 'Tarcisio de Creta', data de nascimento: '1980-10-10', cpf: '12345678915', telefone: '81955555555', nome completo da mae 'Virginia de Souza', numero do sus: '12345678', email: 'tarcisio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55555555' existe
    And eu estou logado no sistema com o cpf "12345678915" e senha '123456'
    And  a vacina com nome 'COVID-191', numero_lote '1A1' e data_validade '10-12-2023' existe
    And eu estou na pagina de Agendamento de Vacinas
    When eu clico no link de cadastrar novo agendamento
    And eu preencho o agendamento de vacina com Localizacao 'Rua Carmelia', data '07-06-2023', horario '13:20', vacina de nome 'COVID-191',
    And eu clico no botao de criar agendamento
    Then vejo uma mensagem informando que o agendamento foi criado com sucesso

  Scenario: cadastrar novo agendamento de vacina com o campo local de vacinacao vazio

    Given O administrador com role 'Admin' nome completo 'Tarcisi de Creta', data de nascimento: '1980-11-10', cpf: '12345678905', telefone: '81955575555', nome completo da mae 'Virginia de Soza', numero do sus: '12345778', email: 'tarcsio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55550555' existe
    And eu estou logado no sistema com o cpf "12345678905" e senha '123456'
    And  a vacina com nome 'COVID-1A', numero_lote '1AB' e data_validade '10-12-2023' existe
    And eu estou na pagina de Agendamento de Vacinas
    When eu clico no link de cadastrar novo agendamento
    And eu preencho o agendamento de vacina com Localizacao '', data '06-06-2023', horario '13:20', vacina de nome 'COVID-1A',
    And eu clico no botao de criar agendamento
    Then vejo uma mensagem informando que o local esta invalido


  Scenario: editar agendamento

    Given O administrador com role 'Admin' nome completo 'arcisio de Creta', data de nascimento: '1980-10-10', cpf: '90345678915', telefone: '87955555555', nome completo da mae 'Vrginia de Souza', numero do sus: '12343678', email: 'trcisio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '75555555' existe
    And eu estou logado no sistema com o cpf "90345678915" e senha '123456'
    And  a vacina com nome 'CO-19', numero_lote '1FA' e data_validade '10-12-2023' existe
    And eu estou na pagina de Agendamento de Vacinas
    And o agendamento de vacina com Localizacao 'Rua Caarmelia', data '06-06-2023', horario '13:20', vacina de nome 'CO-19' existe
    And eu estou na pagina dessa vacina
    When eu clico em editar o agendamento
    And eu edito o agendamento para Localizacao 'rua daa palma', data '10-10-2023', horario '15:20', vacina de nome 'CO-19'
    And clico em atualizar vacinacao
    Then vejo uma mensagem informando que o agendamento foi editado com sucesso