class StaticPagesController < ApplicationController

	def home
		@works = Work.order('created_at DESC')
		
		@work1 = @works[0]
		@work2 = @works[1]
		@work3 = @works[2]

		@b = StaticPage.last
		@content = @b.homecontact
	end


	def about
		@b = StaticPage.last
		@content = @b.about
	end


	def contact
		@b = StaticPage.last
		@content = @b.contact
	end

end
