*** Settings ***
Resource  basePage.robot

*** Variables ***
${BUYCREDITS_BUTTON}=  class:css-1e9674f
${AMOUNTOFCREDITS_INPUT}=  class:css-1ml9hd4
${POPUP}=  xpath://*[@id="root"]/div/div[1]/div[7]/div/div/div

*** Keywords ***

Go To ProfilePage
  Click Element  ${PROFILEPAGE_BUTTON}
  Wait Until Element Is Visible  ${ADDCREDITS_BUTTON}

Add Credits
  Click Element  ${ADDCREDITS_BUTTON}
  Wait Until Element Is Visible  ${BUYCREDITS_BUTTON}
  Input Text  ${AMOUNTOFCREDITS_INPUT}  10
  Click Element  ${BUYCREDITS_BUTTON}
  Wait Until Element Is Visible  ${POPUP}


