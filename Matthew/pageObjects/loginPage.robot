*** Settings ***
Resource  basePage.robot

*** Variables ***
${LOGIN_DIV}=  xpath://*[@id="SignIn"]/div/form/div[1]
${EMAIL}=  id:SignInEmail
${PASSWORD}=  id:SignInPassword
${LOGIN_BUTTON}=  id:SignInButtonComplete

*** Keywords ***

Login Profile
  Wait Until Element Is Visible  ${LOGIN_DIV}
  Input Text  ${EMAIL}  ${EMAIL_GEGEVENS}
  Input Password  ${PASSWORD}  TestPassword1
  Click Element  ${LOGIN_BUTTON}
  Wait Until Element Is Not Visible  ${LOGIN_BUTTON}
  Wait Until Element Is Visible  ${COMEDY_MOVIES_DIV}

  
