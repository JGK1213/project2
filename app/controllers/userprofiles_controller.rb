class UserprofilesController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

		def create 
		@userprofile = Userprofile.new(event_params)
		if @userprofile.save
			redirect_to userprofiles_path
		else
			redirect_to userprofiles_path
		end
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
			@userprofile = Userprofile.find(params[:id])
			if @event.update_attributes(event_params)
				redirect_to userprofile_path

			else
				render 'show'
			end
		end

		def destroy
	
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to userprofile_path
	end


end
