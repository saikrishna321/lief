Given(/^i'm doing a zip code search$/) do
  sleep 5
  query("* id:'SearchView'", :setText => '01')
  sleep 5
  query("* id:'SearchView'", :setText => '01070')
  touch("* id:'PostalCode'")
  sleep 10
end
And (/^i select first menu from the list$/) do
  touch("* id:'MenuName' index:0")
  sleep 10

end
And (/^i select mini burger menu$/) do
  touch("* id:'MealPrice' index:1")
  sleep 5
  touch("* id:'checkBox' index:2")
  sleep 2
  perform_action('drag',10,10,20,20,5)
  sleep 2
  touch("* marked:'Fry & Dip'")
  sleep 2
end
# //perform_action('drag',80,80,80,20,5)
# scroll_to("* id:'AddToCartButton'")
And (/^i scroll till i see "add to cart" button$/) do
  # if element_does_not_exist("* id:'AddToCartButton'")
  # until_element_exists "* id:'AddToCartButton'
  # •	def scroll_until_I_see('A')
  # 	until element_exists("* marked:'AddToCart'") do scroll("ScrollView", :down)
  # 	end
  # end


  perform_action('drag',80,80,80,20,5)
  # performAction('drag', 50, 50, 50, 20, 10)


  # touch("* marked:'Add to cart'")
  sleep 2
end

And (/^i click on add to cart$/) do
  perform_action('drag',80,80,80,20,5)
  sleep 2
  touch("* marked:'Add to cart'")
  sleep 5
end
And (/^i click on "go to cart"$/) do
  touch("* id:'CartButton'")
  sleep 5
end
And (/^i click on "select payment method"$/) do
  touch("* id:'orderNowButton'")
  sleep 5
end
And (/^i select cash$/) do
  touch("* id:'CashRadio'")
  perform_action('drag',50,50,50,20,5)
  sleep 5
end
And(/^i click on form$/) do
  sleep 5
  touch("* id:'DeliverAddressLayout'")
  sleep 10
end
And(/^i fill in the form$/) do
  sleep 5
  query("* id:'DeliverFirstName'",:setText=>'testing')
  query("* id:'DeliverLastName'", :setText=> "rao")
  query("* id:'DeliverEmail'", :setText=> "calabash1@ydqa.de")
  query("* id:'DeliverPhone'", :setText=> "5662147895")
  query("* id:'DeliverStreet'", :setText=> "kaiser")
  query("* id:'DeliverNumber'", :setText=> "55")
  touch("* id:'AgbToggleButton'")
  touch("* id:'saveAddressButton'")
  sleep 10
end
And (/^i make an order by clicking the order now button$/) do
  touch("* id:'SubmitOrder'")
  sleep 10
end


Given(/^user must be able to pay$/) do
  steps %Q{
		Given i'm doing a zip code search
    	And i press the "OK" button
    	And i select the qa calabash restaurant from the list
    	And i select first menu from the list
    	And i select mini burger menu
        And i click on add to cart
    	And i click on "go to cart"
    	And i click on "select payment method"

	}
end
And(/^User must fill in details$/) do
  steps %Q{
		And i click on form
    And i fill in the form
    And i make an order by clicking the order now button

}
end
