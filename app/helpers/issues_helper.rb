module IssuesHelper
=begin
	def play_trump(issue_id)
		if issue_id == "3" 
			content_tag(:strong, "You've been Trumped!")
		elsif issue_id == "2"
			content_tag(:strong, "You've been Hit by Hillary!")
		else 
			content_tag(:strong, "You've been Bushwacked!" + issue_id)
		end
	end
=end	

#########ALTERNATIVE#########




# I want to make this game random.
# The user will click on an issue.
# I want to return a random quote.
# I want to puts "You've been Trumped!"
# I need to use the rand method on the quotes.
# I need a conditional statement, if candidate_id == Trump, 
#then return "You've been Trumped!" 

#################  Sample Code  #################



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
			content_tag(:strong, "You've been Trumped! " + quot.phrase)
		elsif quot.candidate_id == 2
			content_tag(:strong, "You've been Hit by Hillary! " + quot.phrase)
		elsif quot.candidate_id == 3
			content_tag(:strong, "You've been Burned by Burnie! " + quot.phrase)
		else 
			content_tag(:strong, "You've been Bushwacked! " + quot.phrase)
		end
	end

end

#def play_get_trumped(candidate_id)
# 	if candidate_id == "1"
#     content_tag(:strong, "You've been Trumped!")
#   elsif candidate_id == "2"
#			content_tag(:strong, "You've been Hit by Hillary!")
#		else 
#			content_tag(:strong, "You've been Bushwacked!" + issue_id)
#		end
#	end
##### OR ###########
#  case candidate_id
#    when "1"
#       content_tag(:strong, "You've been Trumped!")
#    when "2"
#       content_tag(:strong, "You've been Hit by Hillary!") 
#    when "3"
#       content_tag(:strong, "You've been Burned by Bernie!" + issue_id)
#    when "4"
#       content_tag(:strong, "You've been Bushwacked!" + issue_id)
#    else
#       content_tag(:strong, "Please try again!" + issue_id)
#  end


