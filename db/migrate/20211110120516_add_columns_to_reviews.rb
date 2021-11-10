class AddColumnsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rating, :integer
    add_column :reviews, :content, :string
    add_reference :reviews, :restaurant, null: false, foreign_key: true
  end
end
