module IssuePlanProjectPatch
  module ProjectPatch
    def self.apply
      Project.send :include, IssuePlanProjectPatch::ProjectPatch
    end

    def self.included(base)
      base.class_eval do
        has_many :project_issue_plans
        has_many :issue_plans, through: :project_issue_plans
        safe_attributes 'issue_plan_ids'
      end
    end
  end
end