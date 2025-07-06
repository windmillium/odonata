class CreateRuns < ActiveRecord::Migration[8.0]
  def change
    create_table :runs do |t|
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :duration
      t.string :stage
      t.text :notes
      t.references :tumbler, null: false, foreign_key: true

      t.timestamps
    end
  end
end
