class CreateTeamMembers < ActiveRecord::Migration
  def change
  	create_table :team_members do |t|
  		t.references :player
  		t.references :team
  		t.string :jersey_number
  		t.boolean :captain

  		t.timestamps null: false
  	end
  end
end
