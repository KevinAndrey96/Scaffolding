class CreateProyectoPatrocinadors < ActiveRecord::Migration[5.1]
  def change
    create_table :proyecto_patrocinadors do |t|
      t.references :proyecto, foreign_key: true
      t.references :patrocinador, foreign_key: true

      t.timestamps
    end
  end
end
