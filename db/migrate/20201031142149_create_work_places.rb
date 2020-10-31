class CreateWorkPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :work_places do |t|

      t.timestamps
      t.string :name
      t.integer :title
      t.string :day_id
    end
  end
end
