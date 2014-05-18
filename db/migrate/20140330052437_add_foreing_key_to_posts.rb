class AddForeingKeyToPosts < ActiveRecord::Migration
  def change
    add_index :posts, :usuario_id
  end
end
