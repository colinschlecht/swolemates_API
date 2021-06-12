class CreateMusicPreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :music_preferences do |t|
      t.boolean :rock
      t.boolean :techno
      t.boolean :rap
      t.boolean :country
      t.boolean :pop
      t.boolean :alternative
      t.boolean :classical
      t.boolean :funk
      t.boolean :latin
      t.boolean :jazz
      t.boolean :none

      t.timestamps
    end
  end
end
