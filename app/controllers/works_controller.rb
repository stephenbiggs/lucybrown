class WorksController < ApplicationController

	def index
		@posts = Work.all.map(&:id)
		@posts.reverse
		
		@works1 = Work.find(@posts[0])
		@works2 = Work.find(@posts[1])
	
	end


	def show
		@work = Work.find(params[:id])
		@next = @work.id + 1
		@back = @work.id - 1
		@total = Work.all.size
	end


	def new
		@work = Work.new
	end


	def create
		@work = Work.new(work_params)

		@work.save

		redirect_to root_path
	end


	def edit
		@work = Work.find(params[:id])
	end


	def update
		@work = Work.find(params[:id])

		@work.update(work_params)

		redirect_to root_path
	end


	def destroy
		@work = Work.find(params[:id])
		
		@work.destroy

		redirect_to root_path
	end




	def work_params
		params.require(:work).permit(:title, :content, :image1, :image2)
	end


end
