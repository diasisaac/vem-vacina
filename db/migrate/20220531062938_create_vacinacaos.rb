class CreateVacinacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :vacinacaos do |t|
      t.string :desc_local
      t.date :data
      t.time :horario
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
