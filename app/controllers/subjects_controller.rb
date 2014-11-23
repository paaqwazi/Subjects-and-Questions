class SubjectsController < ApplicationController
	before_action :find_subject, only: [:show, :edit, :update, :destroy]
	def index
		@subjects = Subject.all.order("created_at DESC")
	end

	def show
	end

	def new
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)

		if @subject.save
			redirect_to @subject
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def find_subject
		@subject = Subject.find(params[:id])
	end

	def subject_params
		params.require(:subject).permit(:name, :lecturer, :subject_code)
	end
end
