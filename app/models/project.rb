class Project < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :project_name, presence: true
  end
end
