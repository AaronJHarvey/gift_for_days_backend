class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :store
      t.integer :person_id

      t.timestamps
    end
  end
end
