Given(/^i'm doing a zip code search$/) do
  sleep 5
  query("* id:'SearchView'", :setText => '01')
  sleep 4
  performAction('drag', 50, 50, 50, 20, 10)
  sleep 5
  touch("* id:'PostalCode' index:5")
  sleep 10
end
And (/^i press the "OK" button$/) do
touch("* id:'button3'")
  sleep 5
end
And (/^i select the first restaurant in the list$/) do
touch("* id:'RestaurantLogo'")
  sleep 5
end
And (/^i select "menu"$/) do
  touch("* id:'MenuName'")
  sleep 5
end
And (/^i select the first meal$/) do
  touch("* id:'MealPrice'")
  sleep 5
  touch("* id:'checkBox'")
  touch("* marked:'Apfelschorle 0,5l'")
  sleep 5
  performAction('drag', 50, 50, 50, 20, 10)
  sleep 2
  performAction('drag', 50, 50, 50, 20, 10)
  sleep 2
  touch("* marked:'Fry & Dip'")
  sleep 5
  end
  And(/^i scroll till i see "add to cart" button$/) do
    while element_does_not_exist("TextView marked:'Add to cart'")
      performAction('drag', 50, 50, 50, 20, 10)
    end
    touch("* marked:'Add to cart'")
    sleep 5
  end

And (/^i select on "Add to cart"$/) do
  sleep 5
 touch("* id:'CartButton'")
  sleep 4
end
And (/^i increment the cart twice$/) do
 touch("* id:'increaseButton'")
  sleep 2
 touch("* id:'increaseButton'")
  sleep 2
end
And (/^i select on "select payment method"$/) do
  touch("* id:'orderNowButton'")
  sleep 5
end
And (/^i select cash$/) do
  sleep 5
  touch("* id:'CashRadio'")
  sleep 5
  performAction('drag', 50, 50, 50, 20, 10)
  sleep 5
end


And(/^i select on form$/) do
  sleep 4
  touch("* marked:'Delivery Address'")
  sleep 5
end

And(/^i fill in the form$/) do
  query("* id:'DeliverFirstName'", :setText => 'sne')
  sleep 4
  query("* id:'DeliverLastName'", :setText => 'rao')
  sleep 4
  query("* id:'DeliverEmail'", :setText => 'test@ydqa.de')
  sleep 4
  query("* id:'DeliverPhone'", :setText => '5412574625')
  sleep 4
  query("* id:'DeliverStreet'", :setText => 'kaiser')
  sleep 4
  query("* id:'DeliverNumber'", :setText => '55')
  sleep 4
  touch("* id:'AgbToggleButton'")
  sleep 4
  touch("* id:'saveAddressButton'")
  sleep 10
end
Then (/^i make an order by clicking the order now button$/) do
touch("* id:'SubmitOrder'")
  sleep 10
end

Given (/^i do a simple order in QA restaurant$/) do
  steps %Q{
        Given i'm doing a zip code search
    And i press the "OK" button
    And i select the first restaurant in the list
    And i select "menu"
    And i select the first meal
    And i select on "Add to cart"
    And i increment the cart twice
    And i select on "select payment method"

}
  end


