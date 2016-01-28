class AddConsiderationsTable < ActiveRecord::Migration
  def change
    create_table :considerations do |t|
      t.string :consideration
      t.references :koan
    end
  end
end
