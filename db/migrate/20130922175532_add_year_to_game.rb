class AddYearToGame < ActiveRecord::Migration
  def change
  	add_column :games, :year, :integer
  end
end
