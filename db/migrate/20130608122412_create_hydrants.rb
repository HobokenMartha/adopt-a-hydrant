class CreateHydrants < ActiveRecord::Migration
  def change
    create_table :hydrants do |t|
      t.string :sid
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :user_id

      t.timestamps
    end
  end
end
