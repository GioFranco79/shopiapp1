class CreateRegistroMxes < ActiveRecord::Migration[7.0]
  def change
    create_table :registro_mxes do |t|
      t.string :nombre
      t.string :redirige
      t.integer :prioridad

      t.timestamps
    end
  end
end
