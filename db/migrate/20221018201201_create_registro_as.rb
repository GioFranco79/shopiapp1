class CreateRegistroAs < ActiveRecord::Migration[7.0]
  def change
    create_table :registro_as do |t|
      t.string :nombre
      t.string :redirige

      t.timestamps
    end
  end
end
