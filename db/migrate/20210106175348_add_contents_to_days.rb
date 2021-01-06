class AddContentsToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :contents, :text
  end
end
