class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :nombre
      t.string :facultad
      t.references :proyecto, foreign_key: true

      t.timestamps
    end
  end
end
