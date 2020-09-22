class AddCreatorIdToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :creator_id, :integer 
  end
end
