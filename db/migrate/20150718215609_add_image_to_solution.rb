class AddImageToSolution < ActiveRecord::Migration
  def change
    add_attachment :solutions, :image
  end
end
