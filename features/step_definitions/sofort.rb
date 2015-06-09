And (/^i select sofort$/) do
  touch("* id:'EbankingRadio'")
  perform_action('drag',50,50,50,20,5)
  sleep 5
end
And(/^i enter payment details$/) do
  enter_text("webView css:'#MultipaysSessionSenderBankCode'", 88888888)
  sleep 2
  touch("webview css:'div div button'")
  sleep 5
  enter_text("webView css:'#BackendFormLOGINNAMEUSERID'", 25825326685)
  sleep 1
  enter_text("webView css:'#BackendFormUSERPIN '", 5485286)
  sleep 4
  perform_action('drag',50,20,20,20,5)
  touch("webview css:'div div button'")
  sleep 5
  touch("webView css:'#MultipaysSessionSenderAccountNumberTechnical23456789'")
  touch("webview css:'div div button'")
  sleep 5
  enter_text("webView css:'#BackendFormTan'", 12345)
  sleep 2
  scroll_to("WebView css:'div div button'")
  sleep 5
  touch("webview css:'div div button'")
  sleep 10
end