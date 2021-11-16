class CreateReviews < ActiveRecord::Migration[6.1]
  def change 
    create_table :reviews do |t|
    t.string :rating
    t.string :user_name
    t.references :restaurant
    end
  end
end
