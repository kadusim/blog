class AddDestaqueToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :destaque, :boolean
  end
end
