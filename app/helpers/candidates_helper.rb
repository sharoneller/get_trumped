module CandidatesHelper
	def image_for(candidate)
     if candidate.image_file_name.blank?
     image_tag('placeholder.png')
     else
     image_tag(candidate.image_file_name)
   end
  end

end
