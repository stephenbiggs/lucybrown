class AddAttachmentImage2ToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :image2
    end
  end

  def self.down
    drop_attached_file :works, :image2
  end
end
