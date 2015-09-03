class Issue < ActiveRecord::Base
	has_many :quotes
	has_many :candidates, through: :quotes
end
