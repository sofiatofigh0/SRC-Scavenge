class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.boolean :private, :default => false
      t.string :description
      t.string :link
      t.integer :topic_id

      t.timestamps
    end
  end
end
