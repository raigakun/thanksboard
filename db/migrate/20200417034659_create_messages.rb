class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :likes_count
      t.timestamps
    end
  end
end
