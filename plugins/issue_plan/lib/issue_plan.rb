module IssuePlan
  module ProjectSettingsTabs
    def self.apply
      ProjectsController.send :helper, IssuePlan::ProjectSettingsTabs
    end

    def project_settings_tabs
      tabs = super
      # if User.current.allowed_to?(:some_permission, @project)
        # tabs.push({
        #   name: 'some_plugin_settings',
        #   partial: 'projects/settings/some_plugin',
        #   label: :label_some_plugin
        # })
      tabs.push({
        :name => 'issue_plans', 
        # :action => :edit_project, 
        :partial => 'projects/settings/issues', 
        :label => :label_issue_plan
      })
      # end
      tabs
    end

  end
end