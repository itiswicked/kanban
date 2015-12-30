class Task < ActiveRecord::Base
  belongs_to :project

  validates :project_id, presence: true
  validates :task_name, presence: true
  validates :phase, presence: true
end
