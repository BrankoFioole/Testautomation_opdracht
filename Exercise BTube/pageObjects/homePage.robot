*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${SIGNIN_BUTTON}=  id:SignInButton
${LOADINGPAGE_DIV}=  class:css-1yo793j

*** Keywords ***

Go To Home
  Go To  ${BASE_URL}
  Set Window Size  1318  896
  Wait Until Element Is Visible  ${NAV}  10

Click Signup Button
  Wait Until Element Is Visible  ${SIGNIN_BUTTON}
  Wait Until Element Is Not Visible  ${LOADINGPAGE_DIV}  10
  #of hieronder als de developer de klasse id zou aanpassen
  #sleep  10
  Click Element  ${SIGNIN_BUTTON}

