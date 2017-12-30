class ItemStatusToStatusId < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :status, :status_id
  end
end
