# == Schema Information
#
# Table name: scores
#
#  id         :integer         not null, primary key
#  points     :integer
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Score < ActiveRecord::Base
  attr_accessible :points, :user_id
  belongs_to :user
end
