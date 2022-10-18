class CreateDominios < ActiveRecord::Migration[7.0]
  def change
    create_table :dominios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
