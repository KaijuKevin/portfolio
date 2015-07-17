class SkillsController < ApplicationController
	load_and_authorize_resource
	
	def index
		@skills = Skill.all
		@recommendations = Recommendation.all
	end

	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.new(skill_params)
		if @skill.save
			flash[:notice] = "Skill successfully added"
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@skill = Skill.find(params[:id])
		@projects = @skill.projects
	end

	def edit
		@skill = Skill.find(params[:id])
	end

	def update
		@skill = Skill.find(params[:id])
		if @skill.update(skill_params)
			flash[:notice] = "Skill successfully edited"
			redirect_to skill_path(@skill)
		else
			render :edit
		end
	end

	def destroy
		@skill = Skill.find(params[:id])
		@skill.destroy
		flash[:notice] = "Skill successfully deleted"
		redirect_to root_path
	end

	private

	def skill_params
		params.require(:skill).permit(:name, :description);
	end
end