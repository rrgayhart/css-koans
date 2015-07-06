class CreateSolution < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :codepen_slug, null: false
      t.string :codepen_username, null: false, :default => 'rrgayhart'
      t.references :koan
      t.timestamps null: false
    end
    add_index :solutions, [:koan_id]
  end
end
