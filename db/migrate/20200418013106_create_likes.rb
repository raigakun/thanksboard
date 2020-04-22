class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :message, counter_cache: :likes_count
      t.timestamps
    end
  end
end
