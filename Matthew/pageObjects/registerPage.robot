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
  Input Text  ${FIRSTNAME}  testVoorNaam
  Input Text  ${LASTNAME}  testAchterNaam
  Input Text  ${EMAIL}  testEmail@gmail.com
  Input Password  ${PASSWORD}  TestPassword1
  Input Password  ${REPASSWORD}  TestPassword1
  Click Element  ${JOINUS_BUTTON}
  Wait Until Element Is Not Visible  ${JOINUS_BUTTON}

  
