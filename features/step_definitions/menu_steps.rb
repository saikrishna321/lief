When (/^i click on order now button$/) do
	wait_for_elements_exist ["* marked:'Order Now'"], :timeout => 30
	unless element_exists "* id:'AccountMenuTitle'"
		touch("* marked:'Order Now'")
	end
	touch("* marked:'Order Now'")
end

Then (/^i should see user in menu page$/) do
	wait_for_elements_exist ["* marked:'filterIV'"], :timeout => 30
	touch("* marked:'filterIV'")
	sleep 5
	user_in_menu_page=query("* marked:'My stamps'", :isEnabled)[0]
	expect(user_in_menu_page).to eq(true)
	touch("* marked:'filterIV1'")
end

When(/^i am in menu page$/) do
	steps %Q{
		When i click on order now button
		And i click on "OK"
	}
end