class QuotesController < ApplicationController
	def index
		@issue = Issue.find(params[:issue_id])
		@quotes = @issue.quotes

#		@candidates = @quote.candidates
#		@candidate = Candidate.find(params[:candidate_id])
	end
end
