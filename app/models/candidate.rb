class Candidate < ActiveRecord::Base
  has_many :quotes
  has_many :issues, through: :quotes
end
