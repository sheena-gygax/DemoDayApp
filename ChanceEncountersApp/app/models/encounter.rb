class Encounter < ActiveRecord::Base
  attr_accessible :comment, :day, :title
  validates_presence_of :title
  validates_presence_of :comment
end
