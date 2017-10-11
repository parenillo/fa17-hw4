class HomeController < ApplicationController
	def new
		@placeholder_task = 'blep'
		@placeholder_finished = 'false'
	end
	def show
		@cats = Cat.all
		@todos = Todo.all
		@users = User.all
	end
	def create
		Todo.create(tasks: params[:tasks], finished: params[:finished])
		redirect_to "/"
	end
end