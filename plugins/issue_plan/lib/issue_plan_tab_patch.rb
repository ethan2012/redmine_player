module IssuePlanTabPatch
  module ProjectSettingsTabs
    def self.apply
      ProjectsController.send :helper, IssuePlanTabPatch::ProjectSettingsTabs
    end

    def project_settings_tabs
      tabs = super
      tabs.insert(
        3, # 在问题后插入问题规划
        {
          :name => 'issue_plans', 
          # :action => :edit_project, 
          :partial => 'projects/settings/issue_plan', 
          :label => :label_issue_plan
        }
      )
    end
  end
end