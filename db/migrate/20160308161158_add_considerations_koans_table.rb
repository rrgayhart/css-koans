class AddConsiderationsKoansTable < ActiveRecord::Migration
  def change
    create_table :considerations_koans do |t|
      t.belongs_to :koan, index: true
      t.belongs_to :consideration, index: true
    end
  end
end
