class CreateOpponents < ActiveRecord::Migration
  def change
  	create_table :opponents do |t|
  		t.references :team
  		t.references :game
  		t.integer :score

  		t.timestamps null: false
  	end
  end
end
