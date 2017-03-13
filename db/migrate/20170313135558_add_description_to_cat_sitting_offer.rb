class AddDescriptionToCatSittingOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :cat_sitting_offers, :description, :string
  end
end
