Given /^there are the following users:$/ do |table|
  # table is a | user@ticketee.com | password |
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed") == 'true'
    @user = User.create!(attributes)

    @user.confirm! unless unconfirmed

  end
end