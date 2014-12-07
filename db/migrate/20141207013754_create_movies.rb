class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :cast
      t.string :rating
      t.references :director, index: true

      t.timestamps null: false
    end
    add_foreign_key :movies, :directors
  end
end
