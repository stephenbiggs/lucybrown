class ClientsController < ApplicationController

	def index

		@client = Work.where(category: "Client").order('created_at DESC')
		@worksa = @client[0..14]
		@worksb = @client[14..28]
		@worksc = @client[28..42]
		@worksd = @client[42..56]

			if @worksa
				@worksa_total = @worksa.count
			end

			if @worksb	
				@worksb_total = @worksb.count
			end

			if @worksc
				@worksc_total = @worksc.count
			end

			if @worksd
				@worksd_total = @worksd.count
			end
		
	end


	def show
		@work = Work.find(params[:id])
		
	end


end
