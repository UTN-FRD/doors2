class CreateGates < ActiveRecord::Migration[5.1]
  def change
    create_table :gates do |t|
      t.string :codigo
      t.string :ubicacion
      t.string :descripcion
      t.string :area

      t.timestamps
    end
  end
end
