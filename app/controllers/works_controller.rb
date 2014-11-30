class WorksController < ApplicationController



	def index
		#@posts = Work.order('created_at DESC')

		#@works1 = @posts[0..14]
		#@works2 = @posts[14..28]
		#@works3 = @posts[28..42]
		#@works4 = @posts[42..56]
	
		@personal = Work.where(category: "Personal").order('created_at DESC')
		@works1 = @personal[0..14]
		@works2 = @personal[14..28]
		@works3 = @personal[28..42]
		@works4 = @personal[42..56]
		
			if @works1
				@works1_total = @works1.count
			end

			if @works2	
				@works2_total = @works2.count
			end

			if @works3
				@works3_total = @works3.count
			end

			if @works4
				@works4_total = @works4.count
			end

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
		params.require(:work).permit(:title, :content, :image1, :image2, :destroyImage2, :category)
	end


end
