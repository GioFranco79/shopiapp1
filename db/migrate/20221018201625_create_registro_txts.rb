class CreateRegistroTxts < ActiveRecord::Migration[7.0]
  def change
    create_table :registro_txts do |t|
      t.string :nombre
      t.string :valor

      t.timestamps
    end
  end
end
