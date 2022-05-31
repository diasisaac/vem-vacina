require "test_helper"

class UsuarioTest < ActiveSupport::TestCase
  test 'deve salvar usuario corretamente' do
    usuario = Usuario.new nome_completo: 'Felipe Foncesca Silva',
                          data_nascimento: '2007-06-12',
                          cpf: 12345678911,
                          telefone: 12345678,
                          nome_mae: 'Maria Foncesca',
                          num_sus: 12345678,
                          email: 'foncesca@gmail.com',
                          password: '123456',
                          endereco_attributes:{cidade: 'Ibiracituba',
                                               logradouro: 'Rua Um, 123',
                                               complemento: 'Ap. 105',
                                               bairro: 'Capao Redondo',
                                               cep: 87654321

                          }


    assert usuario.save
  end

  test 'Nao deve salvar usuario sem campo cpf' do
    usuario = Usuario.new nome_completo: 'Felipe Foncesca Silva',
                          data_nascimento: '2007-06-12',
                          telefone: 12345678,
                          nome_mae: 'Maria Foncesca',
                          num_sus: 12345678,
                          email: 'foncesca@gmail.com',
                          password: '123456',
                          endereco_attributes:{cidade: 'Ibiracituba',
                                               logradouro: 'Rua Um, 123',
                                               complemento: 'Ap. 105',
                                               bairro: 'Capao Redondo',
                                               cep: 87654321

                          }


    assert_not usuario.save
  end

  test 'Nao deve salvar usuario com campo nome vazio' do
    usuario = Usuario.new nome_completo: '',
                          data_nascimento: '2007-06-12',
                          cpf: 12345678911,
                          telefone: 12345678,
                          nome_mae: 'Maria Foncesca',
                          num_sus: 12345678,
                          email: 'foncesca@gmail.com',
                          password: '123456',
                          endereco_attributes:{cidade: 'Ibiracituba',
                                               logradouro: 'Rua Um, 123',
                                               complemento: 'Ap. 105',
                                               bairro: 'Capao Redondo',
                                               cep: 87654321

                          }


    assert_not usuario.save
  end
end
