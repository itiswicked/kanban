class Project < ActiveRecord::Base
  belongs_to :user
  has_many :tasks

  validates :user_id, presence: true
  validates :project_name, presence: true
end
