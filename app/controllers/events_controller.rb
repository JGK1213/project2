class EventsController < ApplicationController
	skip_before_filter :authorize
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
		@event = Event.new(event_params)
		if @event.save
			render 'new'
		else
			render 'new'
		end
	end
	

	def edit
		@event = Event.find(params[:id])
		
	end


		def update
			@event = Event.find(params[:id])
			if @event.update_attributes(event_params)
				render 'edit'
			else
				render 'index'
			end
		end

	def destroy
	
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end

	private
	def event_params
		params.require(:event).permit(:name, :event, :digit, :time)
	end




	
end
