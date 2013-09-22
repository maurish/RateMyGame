class AddCountryAndCityToPublisher < ActiveRecord::Migration
  def change
  	add_column :publishers, :country, :string
  	add_column :publishers, :city, :string
  end
end
