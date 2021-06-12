class CreateMatchRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :match_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
