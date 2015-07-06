class CreateProblem < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :codepen_slug, null: false
      t.string :codepen_username, null: false, :default => 'rrgayhart'
      t.references :koan
      t.timestamps null: false
    end
  end
end
