class AddAttachmentFotoToPosts < ActiveRecord::Migration[4.2]
  def self.up
    change_table :posts do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :posts, :foto
  end
end
