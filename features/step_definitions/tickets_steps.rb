When /^that project has a ticket:$/ do |table|
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end

When /^"([^"]*)" has created a ticket for this project:$/ do |email, table|
  # table is a | Make it shiny! | Gradients! Starburst! Oh my! |
  table.hashes.each do |attributes|
    attributes = attributes.merge!(:user => User.find_by_email!(email))
    @project.tickets.create!(attributes)
  end
end