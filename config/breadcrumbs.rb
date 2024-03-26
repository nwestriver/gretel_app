crumb :root do
  link "ホーム", root_path
end

# ユーザー登録ページのパンくずリストの指定
crum :user_new do
  link "新規ユーザー作成", new_user_path
  parent :root
end

# ユーザー詳細ページのパンくずリストの指定(pathに:idを含める必要がある)
crum :user_show do |user|
  link "#{user.name}さんの詳細", user_path(user)
  parent :root
end

# ユーザー編集画面のパンくずリストの指定
crum :user_edit do |user|
  link "ユーザー編集"
  parent :user_show, user # 親へのリンクにuserを渡してあげる必要がある。
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).