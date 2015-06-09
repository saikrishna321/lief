When (/^I touch "Sign up now!" button$/) do
  wait_for_elements_exist(["* id:'ForgotPasswordButton'"], :timeout => 20)
  touch("* id:'signUpButton2'")
end
And (/^I enter First name$/) do
  sleep 5
  query("* id:'CustomerPreName'",:setText=>'testing')
end
And (/^I enter Last name$/) do
  sleep 5
  query("* id:'CustomerName'", :setText=> "rao")
end
And (/^I enter user name$/) do
  sleep 5
  query("* id:'CustomerNickName'", :setText=> "sample")
end
And (/^I enter email$/) do

  query("* id:'CustomerEmailAddress'", :setText=>"calabash2@ydqa.de")
end
And (/^I enter phone$/) do
  query("* id:'CustomerPhoneNr'", :setText=> "5662147895")
end
And (/^I enter password$/) do
  query("* id:'CustomerNewPassword'", :setText=> "testen")
end
And (/^I enter repeat password$/) do
  query("* id:'CustomerNewPassConfirmation'", :setText=> "testen")
end
And (/^I touch Conditions$/) do
  touch("* id:'AgbToggleButton'")
end
And (/^I scroll until I see the "Sign up now"$/) do
  perform_action('drag',50,50,50,20,5)
end

And (/^I touch privacy$/) do
  touch("* id:'ConfidentialityToggleButton'")
end
And (/^i touch sign up now$/) do
  touch("* id:'RegisterButton'")
end
Then(/^user must be successfully registered$/) do
  wait_for_elements_exist ["* id:'AddNewAddress'"], :timeout => 50
  touch("* id:'AddNewAddress'")
  user_is_registered=query("* marked:'Apply'", :isEnabled)[0]
  expect (user_is_registered).to eq(true)
end

