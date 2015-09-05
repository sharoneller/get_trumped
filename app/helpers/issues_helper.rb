module IssuesHelper

# I want to make this game random.
# The user will click on an issue.
# I want to return a random quote.
# I want to puts "You've been Trumped!"
# I need to use the rand method on the quotes.
# I need a conditional statement, if candidate_id == Trump, 
#then return "You've been Trumped!" 



 def randomize_quote(issue_id)
 	@quotes = Quote.where("issue_id = ?", issue_id)
 	#puts @quotes.size
 	size = @quotes.size
 	rand_num = rand(size)
 	#self.sort_by {quote_id}
 	quot = @quotes[rand_num]
 	#content_tag(:strong, quot.phrase)
 	puts quot.phrase
 	candidate_hit(quot)
 	
 end

 def candidate_hit(quot)
	candidate_name = Candidate.find(quot.candidate_id).name
	puts candidate_name + " haha " + quot.phrase
		if quot.candidate_id == 1
			content_tag(:strong, "You've been Trumped! " ) +
			tag("br") + quot.phrase
		elsif quot.candidate_id == 2
			content_tag(:strong, "You've been Hit by Hillary! " ) +
			tag("br") + quot.phrase
		elsif quot.candidate_id == 3
			content_tag(:strong, "You've been Burnietized! " ) +
			tag("br") + quot.phrase
		else 
			content_tag(:strong, "You've been Bushwacked! " ) +
			tag("br") + quot.phrase
		end
	end

end



