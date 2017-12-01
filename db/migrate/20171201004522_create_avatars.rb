class CreateAvatars < ActiveRecord::Migration[5.0]
  def change
    create_table :avatars do |t|
      t.string :avatarpic
      t.integer :user_id
      t.timestamps
    end
    add_index :avatars, :user_id
  end
end
