class AddLinkToUserResources < ActiveRecord::Migration[6.0]
  def change
    add_column :user_resources, :link, :string 
  end
end
