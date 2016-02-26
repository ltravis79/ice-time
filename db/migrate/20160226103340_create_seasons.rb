class CreateSeasons < ActiveRecord::Migration
  def change
  	create_table :seasons do |t|
  		t.string :description, null: false
  		t.date :start_date
  		t.references :division

  		t.timestamps null: false
  	end
  end
end
