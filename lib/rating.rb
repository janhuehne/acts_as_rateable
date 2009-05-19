class Rating < ActiveRecord::Base
  belongs_to :rate, :dependent => :destroy
  belongs_to :rateable, :polymorphic => true
  belongs_to :user

  validates_uniqueness_of :user_id, :scope => [:rateable_id, :rateable_type]
end
