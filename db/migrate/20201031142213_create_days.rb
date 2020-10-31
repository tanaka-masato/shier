class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|

      t.timestamps
      t.string :day_img_id
      t.string :comments_id
      t.date :day
    end
  end
end
