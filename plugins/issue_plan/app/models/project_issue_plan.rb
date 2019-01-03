class ProjectIssuePlan < ActiveRecord::Base
	belongs_to :project
	belongs_to :issue_plan
end
