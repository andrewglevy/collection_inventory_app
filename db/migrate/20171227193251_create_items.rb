class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :collection_id
      t.integer :status
      t.string :notes

      t.timestamps
    end
  end
end
