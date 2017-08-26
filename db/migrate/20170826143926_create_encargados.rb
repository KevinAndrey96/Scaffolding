class CreateEncargados < ActiveRecord::Migration[5.1]
  def change
    create_table :encargados do |t|
      t.string :nombre
      t.string :carrera
      t.integer :semestre
      t.references :proyecto, foreign_key: true

      t.timestamps
    end
  end
end
