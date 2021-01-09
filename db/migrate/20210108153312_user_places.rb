class UserPlaces < ActiveRecord::Migration[6.0]
  def change
    drop_table :user_places
  end
end
