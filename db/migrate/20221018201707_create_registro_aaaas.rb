class CreateRegistroAaaas < ActiveRecord::Migration[7.0]
  def change
    create_table :registro_aaaas do |t|
      t.string :nombre
      t.string :redirige

      t.timestamps
    end
  end
end
