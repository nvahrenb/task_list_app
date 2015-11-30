class List < ActiveRecord::Base
	has_many :tasks
	validates_associated :tasks # jarp: this is a little different than what you might think. You can just validate presence
	validates :title, presence: true, uniqueness: true
	validates :description, presence: true
end
