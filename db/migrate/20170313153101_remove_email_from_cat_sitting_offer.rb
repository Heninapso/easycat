class RemoveEmailFromCatSittingOffer < ActiveRecord::Migration[5.0]
  def change
    remove_column :cat_sitting_offers, :email, :string
  end
end
