class ChangeCpfTelefoneNumSusToBeStringInUsuarios < ActiveRecord::Migration[7.0]
  def change
    change_column :usuarios, :cpf, :string
    change_column :usuarios, :num_sus, :string
    change_column :usuarios, :telefone, :string
  end
end
