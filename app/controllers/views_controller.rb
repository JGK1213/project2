class ViewsController < ApplicationController
before_filter :authorize
	def index
		@views = View.all
	end

	
end
