class QuotesController < ApplicationController
	def index
		@issue = Issue.find(params[:issue_id])
		@quotes = @issue.quotes
	end
end
