class RecommendationsController < ApplicationController 
	load_and_authorize_resource
	def new
		@recommendation = Recommendation.new
		respond_to do |format|
			format.html
			format.js
		end
	end

	def create
		@user = current_user
		@recommendations = Recommendation.all
		@recommendation = @user.recommendations.new(recommendation_params)
		respond_to do |format|
			if @recommendation.save
				format.html { redirect_to root_path }
				format.js
			else
				format.html { render :new }
				format.js
			end
		end
	end

	private

	def recommendation_params
		params.require(:recommendation).permit(:description)
	end
end