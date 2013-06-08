class AddAdoptedOnToHydrants < ActiveRecord::Migration
  def change
    add_column :hydrants, :adopted_on, :time
  end
end
