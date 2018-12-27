class PollsController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		p @project
		@polls = Poll.all
	end

	def vote
		poll.vote(params[:answer])
		flash[:notice] = 'Vote saved.'
		redirect_to :action => 'index'
	end

	private
	def poll
		@poll ||= Poll.find(params[:id])
	end
end
