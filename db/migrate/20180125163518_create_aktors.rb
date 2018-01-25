class CreateAktors < ActiveRecord::Migration[5.1]
  def change
    create_table :aktors do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
