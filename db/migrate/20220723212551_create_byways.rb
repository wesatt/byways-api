# frozen_string_literal: true

class CreateByways < ActiveRecord::Migration[5.2]
  def change
    create_table :byways do |t|
      t.string :route_type
      t.string :route_name
      t.string :image_path
      t.string :website1
      t.string :us_state
      t.string :website2_state
      t.string :website2
      t.float :miles
      t.string :trip_info
      t.string :start
      t.string :finish

      t.timestamps
    end
  end
end
