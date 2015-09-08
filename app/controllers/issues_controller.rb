class IssuesController < ApplicationController
  def index
  	@issues = Issue.all
  end
  def show
  	@issue = Issue.find(params[:id])
  	@quote = Quote.find(params[:id])
  	@quotes = Quote.all
 # 	@candidates = Candidate.all
# 	@candidate = Candidate.find(params[:id])

  end

 
end
