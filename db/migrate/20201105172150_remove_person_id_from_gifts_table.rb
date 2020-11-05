class RemovePersonIdFromGiftsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :gifts, :person_id, :integer
  end
end
