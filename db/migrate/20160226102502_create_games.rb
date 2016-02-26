class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |t|
  		t.date :game_date, null: false
  		t.time :start_time, null: false
  		t.references :season
  		

  		t.timestamps null: false
  	end
  end
end
