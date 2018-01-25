class AddCategoryRefToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :category, foreign_key: true
  end
end
