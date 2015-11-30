class Task < ActiveRecord::Base
	#jarp: there is an issue here. the database has a :list_name attribute, but it should be :list_id
	# => 	 This causes more problems later in the app
	belongs_to :list
	validates :title, presence: true
	validates :priority, presence: true, :inclusion => { :in => 1..10 }, numericality: { only_integer: true }
	validates :due_date, presence: true
	validates :list_name, presence: true

	# jarp: you can add multiple presence rules in one line
end
