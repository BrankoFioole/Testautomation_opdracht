*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${LOGO}=  id:Logo
${LOADINGPAGE_DIV}=  css:.css-1yo793j
${SIGNIN_BUTTON}=  id:SignInButton

*** Keywords ***

Go To Home
  Go To  ${BASE_URL}
  #commentaar
  Set Window Size  1500  800
  Wait Until Element Is Not Visible  ${LOADINGPAGE_DIV}  10
  Wait Until Element Is Visible  ${LOGO}

Click Signup Button
  Wait Until Element Is Visible  ${SIGNIN_BUTTON}
  Click Element  ${SIGNIN_BUTTON}

