class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.integer :role
      t.string :nome_completo
      t.date :data_nascimento
      t.integer :cpf
      t.string :nome_mae
      t.integer :telefone
      t.string :email
      t.string :password_digest
      t.integer :num_sus

      t.timestamps
    end
  end
end
