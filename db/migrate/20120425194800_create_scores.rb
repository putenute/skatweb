class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :user_id

      t.timestamps
    end
  end
end
