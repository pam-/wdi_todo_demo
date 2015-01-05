class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def new
		@todo = Todo.new
		@date = Date.today.to_s
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to todo_path(@todo)
		else
			render :new
		end 
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update_attributes(todo_params)
			redirect_to todo_path(@todo)
		else
			render :new
		end 
	end

	def destroy
		@todo = Todo.find(params[:id])
		if @todo.destroy
			redirect_to '/'
		else
			redirect_to todos_path(@todo)
		end
	end

	private 

	def todo_params
		params.require(:todo).permit(:body, :date)
	end
end 