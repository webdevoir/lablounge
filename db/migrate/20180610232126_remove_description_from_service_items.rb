class RemoveDescriptionFromServiceItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :service_items, :description, :text
  end
end
