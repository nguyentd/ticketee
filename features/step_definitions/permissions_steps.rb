#And /^"([^"]*)" can view the "([^"]*)" project$/ do |user, project|
#  Permission.create!(:user => User.find_by_email(user), :thing => Project.find_by_name(project), :action => 'view')
#end
#
#And /^"([^"]*)" can create tickets in the "([^"]*)" project$/ do |user, project|
#  Permission.create!(:user => User.find_by_email(user),
#                     :thing => Project.find_by_name(project),
#                     :action => 'create tickets')
#end

Given /^"([^"]*)" can ([^"]*?) ([o|i]n)?\s?the "([^"]*)" project$/ do |email, permission, on, project|
  create_permission(find_user(email), find_project(project), permission)
end

def create_permission(user, object ,permission )
  Permission.create!(:user => user, :thing => object, :action => permission)
end

def find_user email
  User.find_by_email(email)
end

def find_project project
  Project.find_by_name project
end
When /^I check "([^"]*)" for "([^"]*)"$/ do |permission, name|
  project = Project.find_by_name!(name)
  permission = permission.downcase.gsub(" ", "_")
  field_id = "permissions_#{project.id}_#{permission}"
  steps(%Q{When I check "#{field_id}"})

end