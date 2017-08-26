class CambioColumna < ActiveRecord::Migration[5.1]
  def self.up
  	rename_column :proyectos, :ombre, :nombre
  end
  def self.down
  end
end
