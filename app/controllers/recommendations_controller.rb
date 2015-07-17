class RecommendationsController < ApplicationController 
	def new
		@recommendation = Recommendation.new
		respond_to do |format|
			format.html
			format.js
		end
	end

	def create
		@recommendation = current_user.recommendations.new(recommendation_params)
		@recommendations = Recommendation.all
		respond_to do |format|
			if current_user.save
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