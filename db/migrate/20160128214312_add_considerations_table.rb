class AddConsiderationsTable < ActiveRecord::Migration
  def change
    create_table :considerations do |t|
      t.string :point
      t.timestamps null: false
    end
  end
end
