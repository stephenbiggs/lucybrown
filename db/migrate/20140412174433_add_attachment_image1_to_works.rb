class AddAttachmentImage1ToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :image1
    end
  end

  def self.down
    drop_attached_file :works, :image1
  end
end
