class AddImageIdToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :image_id, :string
  end
end
