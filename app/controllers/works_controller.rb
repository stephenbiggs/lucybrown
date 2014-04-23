class WorksController < ApplicationController

	def index
		@posts = Work.all.reverse

		@works1 = @posts[0]
		@works2 = @posts[1]
		@works3 = @posts[2]
		@works4 = @posts[3]
		@works5 = @posts[4]
		@works6 = @posts[5]
		@works7 = @posts[6]
		@works8 = @posts[7]
		@works9 = @posts[8]
		@works10 = @posts[9]
		@works11 = @posts[10]
		@works12 = @posts[11]
		@works13 = @posts[12]
		@works14 = @posts[13]
	end


	def show
		@work = Work.find(params[:id])
		
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
