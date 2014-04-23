class Work < ActiveRecord::Base

	validates :title, presence: true
	validates :content, presence: true


# Image 1
	has_attached_file :image1, styles: {large: "525x420#",
																			medium: "300x260#",
																			small: "300x180#"
	}


	validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\z/



# Image 2
	has_attached_file :image2, styles: {large: "525x420#",
																			medium: "300x260#",
																			small: "300x180#"
	}


	validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\z/


	def previous
  Work.where(["id < ?", id]).last
	end

	def next
	  Work.where(["id > ?", id]).first
	end



end
