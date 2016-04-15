class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :board
      t.integer :user_id
    end
  end
end
