class CreateKoans < ActiveRecord::Migration
  def change
    create_table :koans do |t|
      t.string :name, null: false
      t.string :codepen_slug, null: false
      t.string :codepen_username, null: false, :default => 'rrgayhart'
      t.timestamps null: false
    end
  end
end
