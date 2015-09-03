class Quote < ActiveRecord::Base
  belongs_to :issue
  belongs_to :candidate
end
