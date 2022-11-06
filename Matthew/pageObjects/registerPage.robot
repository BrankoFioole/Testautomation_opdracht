*** Settings ***
Resource  basePage.robot

*** Variables ***
${SIGNUP_DIV}=  xpath://*[@id="Register"]/div/form/div[1]
${FIRSTNAME}=  id:RegisterFirstName
${LASTNAME}=  id:RegisterLastName
${EMAIL}=  id:RegisterEmail
${PASSWORD}=  id:RegisterPassword
${REPASSWORD}=  id:RegisterRePassword
${JOINUS_BUTTON}=  id:RegisterButtonComplete

*** Keywords ***

Register Profile
  Wait Until Element Is Visible  ${SIGNUP_DIV}
  Input Text  ${FIRSTNAME}  ${FIRSTNAME_GEGEVENS}
  Input Text  ${LASTNAME}  ${LASTNAME_GEGEVENS}
  Input Text  ${EMAIL}  ${EMAIL_GEGEVENS}
  Input Password  ${PASSWORD}  YBB9$M0eQMoe
  Input Password  ${REPASSWORD}  YBB9$M0eQMoe
  Click Element  ${JOINUS_BUTTON}
  Wait Until Element Is Not Visible  ${JOINUS_BUTTON}
  Wait Until Element Is Visible  ${LOGIN_DIV}

  
