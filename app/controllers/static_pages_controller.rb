class StaticPagesController < ApplicationController

	def home
		@work1 = Work.all.last
	end


	def about
		
	end


	def contact
		
	end

end
