class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column(:reviews, :text)
    add_column(:reviews, :rating, :integer)
  end
end
