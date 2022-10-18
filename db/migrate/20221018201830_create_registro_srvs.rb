class CreateRegistroSrvs < ActiveRecord::Migration[7.0]
  def change
    create_table :registro_srvs do |t|
      t.string :servicio
      t.string :protocolo
      t.string :nombre
      t.string :objetivo
      t.integer :prioridad
      t.integer :peso
      t.integer :puerto

      t.timestamps
    end
  end
end
