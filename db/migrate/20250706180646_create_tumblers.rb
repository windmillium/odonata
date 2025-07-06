class CreateTumblers < ActiveRecord::Migration[8.0]
  def change
    create_table :tumblers do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
