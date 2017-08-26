class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :ombre
      t.text :descripcion
      t.integer :presupuesto

      t.timestamps
    end
  end
end
