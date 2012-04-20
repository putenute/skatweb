class CreateSkatGameScores < ActiveRecord::Migration
  def change
    create_table :skat_game_scores do |t|
      t.integer :user_id
      t.integer :score

      t.timestamps
    end
  end
end
