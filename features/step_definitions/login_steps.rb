Given(/^i'm on application landing page$/) do
	begin
		wait_for_elements_exist ["* marked:'Login Now'"], :timeout => 10
	rescue
		wait_for_elements_exist ["* marked:'Order Now'"], :timeout => 10
	end

end

When(/^I enter the Username$/) do
	query("* id:'CustomerEmail'", :setText => 'live@ydqa.de')
end

And(/^I enter the password$/) do
	query("* id:'CustomerPassword'", :setText => 'testen')
end

And(/^I click on Login button$/) do
	wait_for_elements_exist ["* marked:'Login Now'"], :timeout => 30
	touch("* marked:'Login Now'")
end

Then(/^I should see the user logged in$/) do
	wait_for_elements_exist ["* id:'AccountMenuTitle'"], :timeout => 30
	touch("* id:'AccountMenuTitle'")
	user_logged_in=query("* marked:'Log Out'", :isEnabled)[0]
	expect(user_logged_in).to eq(true)
end
When(/^I enter the Username as "([^"]*)" and I enter the password as "([^"]*)"$/) do |arg1, arg2|
	query("* id:'CustomerEmail'", :setText => "#{arg1}")
	query("* id:'CustomerPassword'", :setText => "#{arg2}")
	
end


