class WorksController < ApplicationController

	def index
		@works = Work.order("created_at desc")
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
