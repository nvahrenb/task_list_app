class Task < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user

  validates :title, :priority, :due_date, presence: true
  validates :task_list, presence: {message: 'must be selected' }
  validates :priority, inclusion: { in: 1..10, message: 'must be a number between 1 and 10' }

  def to_s
    title
  end
end
