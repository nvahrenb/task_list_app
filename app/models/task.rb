class Task < ActiveRecord::Base
	belongs_to :list
	validates :title, presence: true
	validates :priority, presence: true, :inclusion => { :in => 1..10 }, numericality: { only_integer: true }
	validates :due_date, presence: true
	validates :list_name, presence: true
end
