class AddFilmRefToAktors < ActiveRecord::Migration[5.1]
  def change
    add_column :aktors, :film, :refferences
  end
end
