class AddAverageRatingToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :average_rating, :float
  end
end
