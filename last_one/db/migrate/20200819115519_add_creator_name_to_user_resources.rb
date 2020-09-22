class AddCreatorNameToUserResources < ActiveRecord::Migration[6.0]
  def change
    add_column :user_resources, :creator_name, :string 
  end
end
