class StaticPagesController < ApplicationController

	def home
		@works = Work.all.reverse
		
		@work1 = @works[0]
		@work2 = @works[1]
		@work3 = @works[2]
	end


	def about
		
	end


	def contact
		
	end

end
