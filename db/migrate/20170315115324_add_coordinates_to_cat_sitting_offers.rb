class AddCoordinatesToCatSittingOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :cat_sitting_offers, :latitude, :float
    add_column :cat_sitting_offers, :longitude, :float
  end
end
