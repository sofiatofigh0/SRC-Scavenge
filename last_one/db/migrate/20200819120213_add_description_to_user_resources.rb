class AddDescriptionToUserResources < ActiveRecord::Migration[6.0]
  def change
    add_column :user_resources, :description, :string 
  end
end
