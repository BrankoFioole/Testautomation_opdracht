*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${LOGO}=  id:Logo

# Attention: the first definition of LOADINGPAGE_DIV (in comment) works at this moment
# BUT ... the application-under-test is
# a react application with css-in-js (Emotion),
# and that means the classname is re-generated every new build
# --> this is a fragile solution
#${LOADINGPAGE_DIV}=  css:.css-1yo793j

# the next line is a more robust definition of LOADINGPAGE_DIV:
${LOADINGPAGE_DIV}=  xpath://*[@id="root"]/div/div[2]/img[contains(@src,'./static/media/Icon_Brightest.0c054a22.png')]
${SIGNIN_BUTTON}=  id:SignInButton

*** Keywords ***

Go To Home
  Go To  ${BASE_URL}
  Set Window Size  1500  800
  Wait Until Element Is Not Visible  ${LOADINGPAGE_DIV}  10
  Wait Until Element Is Visible  ${LOGO}

Click Signup Button
  Wait Until Element Is Visible  ${SIGNIN_BUTTON}
  Click Element  ${SIGNIN_BUTTON}

