class AddPersonIdToGifts < ActiveRecord::Migration[6.0]
  def change
    add_reference :gifts, :person, null: false, foreign_key: true
  end
end
