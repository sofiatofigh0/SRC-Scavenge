class AddCreatorIdToUserResources < ActiveRecord::Migration[6.0]
  def change
    add_column :user_resources, :creator_id, :integer 
  end
end
