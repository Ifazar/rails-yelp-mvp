class AddReferenceRestaurantsToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :restaurant, null: false, foreign_key: true
  end
end
