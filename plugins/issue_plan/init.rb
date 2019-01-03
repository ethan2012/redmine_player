Redmine::Plugin.register :issue_plan do
  name 'Issue Plan plugin'
  author 'Yuchen Wang'
  description '把Crash验证规划/AB验证规划/灰度验证规划/非AB验证规划/其他验证规划设置为项目可配置'
  version '0.0.1'
  url 'https://github.com/ethan2012'
  author_url 'https://github.com/ethan2012'

  Rails.configuration.to_prepare do
    IssuePlanTabPatch::ProjectSettingsTabs.apply
    IssuePlanProjectPatch::ProjectPatch.apply
  end
end
