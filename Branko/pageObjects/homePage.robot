*** Settings ***
Resource  basePage.robot

*** Variables ***
${NAV}=  id:nav
${LOGO}=  id:Logo
${LOADINGPAGE}=  class:css-1yo793j
${SIGNIN}=  id:SignInButton
${FOOTER}=  class:css-5rmupj
${MOVIE}=  id:Movie
${REGISTER}=  id:RegisterButton
${EMAIL}=  class:css-1ml9hd4
${PASSWORD}=  class:css-1ml9hd4
${LOGINBUTTON}=  class:css-tm4dls
${MYMOVIES}=  class:css-e6lcyw
${MYMOVIESELEMENT}=  class:css-f97be3
*** Keywords ***

Go To Home
  Go To  ${BASE_URL}
  Set Window Size  1500  800
  Wait Until Element Is Visible  ${NAV}  10

Click Signup Button
  Wait Until Element Is Visible  ${SIGNIN}
  Wait Until Element Is Not Visible  ${LOADINGPAGE}  10
  Click Element  ${SIGNIN}

Scroll Down And Up
  Wait Until Element Is Visible  ${SIGNIN}
  Scroll Element Into View  ${FOOTER}
  Scroll Element Into View  ${SIGNIN}

Click Register Button
  Wait Until Element Is Visible  ${REGISTER}
  Wait Until Element Is Not Visible  ${LOADINGPAGE}  10
  Click Element  ${REGISTER}
  Click Element  ${LOGO}

Click Signup Button Logo Test
  Wait Until Element Is Visible  ${SIGNIN}
  Wait Until Element Is Not Visible  ${LOADINGPAGE}  10
  Click Element  ${SIGNIN}
  Click Element  ${LOGO}

Put Login
  Wait Until Element Is Visible  ${EMAIL}
  Input Text  ${EMAIL}  test@gmail.com
  Input Password  ${PASSWORD}  Test1234
  Click Element  ${LOGINBUTTON}
  Wait Until Element Is Visible  ${NAV}  10


Go To My Movies
  Click Element  ${LOGO}
  Click Element  ${MYMOVIES}
  Page Should Contain Element  ${MYMOVIESELEMENT}