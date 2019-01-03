module IssuePlan
  module ProjectSettingsTabs
    def self.apply
      ProjectsController.send :helper, IssuePlan::ProjectSettingsTabs
    end

    def project_settings_tabs
      @test = User.last
      tabs = super
      tabs.insert(
        3, # 在问题后插入问题规划
        {
          :name => 'issue_plans', 
          # :action => :edit_project, 
          :partial => 'projects/settings/issues', 
          :label => :label_issue_plan
        }
      )
    end

  end
end