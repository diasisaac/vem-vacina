Feature: Vacinas
  As a administrador do sistema vem-vacina
  I want to cadastrar, editar e apagar vacinas
  So that eu nao tenha que fazer isso manualmente

  Scenario: cadastrar nova vacina
    Given O administrador com role 'Admin' nome completo 'Tarcisio Creta', data de nascimento: '1980-10-10', cpf: '10045678915', telefone: '81900555555', nome completo da mae 'Virgin de Souza', numero do sus: '12385678', email: 'taro@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '58055555' existe
    And eu estou logado no sistema com o cpf "10045678915" e senha '123456'
    And eu estou na pagina de cadastro de vacinas
    And eu preencho a vacina com nome 'COVIDU-19', numero_lote '1AD' e data_validade '2022-10-12'
    And clico no botao de criar vacina
    Then vejo uma mensagem informando que a vacina foi criada com sucesso

  Scenario: cadastrar uma vacina sem campo nome
    Given O administrador com role 'Admin' nome completo 'Tarmysio de Creta', data de nascimento: '1980-10-10', cpf: '12359678915', telefone: '81985555555', nome completo da mae 'Virgilia de Souza', numero do sus: '12300670', email: 'tarcis12io@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '55555555' existe
    And eu estou logado no sistema com o cpf "12359678915" e senha '123456'
    And eu estou na pagina de cadastro de vacinas
    And eu preencho a vacina com nome '', numero_lote '1RF' e data_validade '2022-10-12'
    And clico no botao de criar vacina
    Then eu vejo uma mensagem de erro sobre campo nome vacina

  Scenario: cadastrar uma vacina sem numero de lote
    Given O administrador com role 'Admin' nome completo 'Tarpio de Creta', data de nascimento: '1980-10-10', cpf: '18456789150', telefone: '81957755555', nome completo da mae 'Virg Souza', numero do sus: '12345678', email: 'tarc5isio@gmail.com', password '123456', cidade: 'Recife', logradouro: 'rua rosa',complemento: 'casa forte', bairro: 'Boa Viagem',cep: '59055555' existe
    And eu estou logado no sistema com o cpf "18456789150" e senha '123456'
    And eu estou na pagina de cadastro de vacinas
    And eu preencho a vacina com nome 'COVIRD-19', numero_lote '' e data_validade '2022-10-12'
    And clico no botao de criar vacina
    Then eu vejo uma mensagem de erro sobre campo numero de lote