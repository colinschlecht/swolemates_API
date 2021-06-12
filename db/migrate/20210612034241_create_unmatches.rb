class CreateUnmatches < ActiveRecord::Migration[6.1]
  def change
    create_table :unmatches do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
