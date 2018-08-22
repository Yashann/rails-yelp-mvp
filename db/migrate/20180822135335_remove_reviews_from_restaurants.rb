class RemoveReviewsFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :reviews, :string
  end
end
