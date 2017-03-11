class Matching < ActiveRecord::Base
  enum request: { unapproved: 0, accepted: 1, denied: 2 }
  belongs_to :user
end
