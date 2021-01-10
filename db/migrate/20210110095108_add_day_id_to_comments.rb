class AddDayIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :day_id, :string
  end
end
