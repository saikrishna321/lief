Then(/^I scroll down to see the plz$/) do
  performAction('drag', 50, 50, 50, 20, 10)
end

Then(/^I perform a zipcode search$/) do
    sleep 5
  query("* id:'SearchView'", :setText => '0107')
    sleep 5
touch("* id:'PostalCode' index:0")
end