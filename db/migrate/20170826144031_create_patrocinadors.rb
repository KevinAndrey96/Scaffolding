class CreatePatrocinadors < ActiveRecord::Migration[5.1]
  def change
    create_table :patrocinadors do |t|
      t.string :nombre
      t.string :tipo
      t.integer :telefono

      t.timestamps
    end
  end
end
