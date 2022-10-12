*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${LOGO}=  id:Logo
${LOADINGPAGE}=  class:css-1yo793j
${SIGNIN}=  id:SignInButton
${EMAIL}=  id:SignInEmail

*** Keywords ***

Go To Home
  Go To  ${BASE_URL}
  Set Window Size  1500  800
  Wait Until Element Is Visible  ${NAV}  10

Click Signup Button
  Wait Until Element Is Visible  ${SIGNIN}
  Wait Until Element Is Not Visible  ${LOADINGPAGE}  10
  Click Element  ${SIGNIN}

Put in Email
  Wait Until Element Is Visible  ${EMAIL}
  ${EMAIL}.SendKeys  test@gmail.com