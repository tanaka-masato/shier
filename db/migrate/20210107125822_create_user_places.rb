class CreateUserPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :user_places do |t|
      t.references :place, index: true, foreign_key: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
