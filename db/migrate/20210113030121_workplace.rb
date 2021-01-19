class Workplace < ActiveRecord::Migration[6.0]
  def change
    drop_table :work_places
  end
end
