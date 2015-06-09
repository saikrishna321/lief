And (/^i select credit card$/) do
  touch("* id:'CardRadio'")
  sleep 2
  perform_action('drag',50,50,50,20,5)
  sleep 2
end
And(/^i will enter payment details$/) do
  scroll_up
  performAction('execute_javascript',"(document.getElementById('cardholder')).scrollIntoView(true)")
  enter_text("webView css:'#cardholder'",'Matthias Laug')
  touch("webView css:'#cardholder'")

  enter_text("webView css:'#pan'", 5472686013431402)
  touch("* id:'CardRadio'")
  touch("webView css:'#expMonth'")
  touch("webView css:'#expMonth' index:2")
  touch("webView css:'#expMonth' [value='01']")
#expMonth [value='01']
  touch("webView css:'#expMonth:nth-child(1)'")

  touch("spinner id:'#{expMonth}'")
# a=query("CheckedTextView id:'spinner'",:text)
# performAction("click_on_text", a[2])
end
