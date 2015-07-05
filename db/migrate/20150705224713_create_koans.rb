class CreateKoans < ActiveRecord::Migration
  def change
    create_table :koans do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
