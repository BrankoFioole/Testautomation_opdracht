*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${LOGO}=  id:Logo
${LOADINGPAGE_DIV}=  xpath://*[@id="root"]/div/div[2]/img[contains(@src,'./static/media/Icon_Brightest.0c054a22.png')]
${SIGNIN_BUTTON}=  id:SignInButton
${REGISTER_BUTTON}=  id:RegisterButton

*** Keywords ***

Go To Home
  Go To  ${BASE_URL}
  Set Window Size  1500  800
  Wait Until Element Is Not Visible  ${LOADINGPAGE_DIV}  10
  Sleep  8s
  Wait Until Element Is Visible  ${LOGO}

Click Signin Button
  Wait Until Element Is Visible  ${SIGNIN_BUTTON}
  Click Element  ${SIGNIN_BUTTON}

Click Register Button
  Wait Until Element Is Visible  ${REGISTER_BUTTON}
  Click Element  ${REGISTER_BUTTON}

