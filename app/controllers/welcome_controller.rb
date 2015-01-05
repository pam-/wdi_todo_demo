class WelcomeController < ApplicationController
	def index
		@date = Date.today.to_formatted_s(:long_ordinal)
		@friday = Time.now.strftime("%A") == 'Friday'
		@today = Time.now.strftime("%A")
		@todos = Todo.where(date: Date.today.to_s)
	end
end 