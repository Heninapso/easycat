class CreateCatSittingOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :cat_sitting_offers do |t|
      t.string :title
      t.string :localisation
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
