class AddImageIdToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :image_id, :string
  end
end
