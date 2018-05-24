class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      has_many :players

      t.timestamps
    end
  end
end

class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :game_id
      belongs_to :game

      t.timestamps
    end
  end
end
