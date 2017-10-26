class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :ida
      t.string :descripcion

      t.timestamps
    end
  end
end
