class CreateVacinas < ActiveRecord::Migration[7.0]
  def change
    create_table :vacinas do |t|
      t.string :nome_vacina
      t.string :num_lote
      t.date :data_validade

      t.timestamps
    end
  end
end
