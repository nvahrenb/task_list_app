class List < ActiveRecord::Base
	has_many :tasks
	validates_associated :tasks
	validates :title, presence: true, uniqueness: true
	validates :description, presence: true
end
